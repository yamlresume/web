#!/usr/bin/env python3
"""
Capture an SEO baseline snapshot before shipping changes.

Records, in one JSON file:
  - GSC 28-day totals and per-page metrics for the pages the plan touches
  - on-page facts read from the rendered HTML of those same pages
    (title, meta description, canonical, hreflang, robots)

Re-running after a change produces a diffable snapshot, so "did this move
anything" becomes a data question rather than an argument.

Usage:
    python3 scripts/seo-baseline.py --label before-seo-1
    python3 scripts/seo-baseline.py --label after-seo-1 --base-url https://yamlresume.dev

Default --base-url is the local production server so the snapshot reflects
uncommitted work. Pass the live URL to snapshot what users actually see.
"""

import argparse
import json
import re
import sys
import urllib.error
import urllib.request
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
AUDIT_DIR = ROOT / "yamlresume.dev-audit"
BASELINE_DIR = AUDIT_DIR / "baselines"
GSC_RECENT_PAGES = ROOT / "gsc-yamlresume.dev-recent28-pages.json"

# Pages the SEO plan targets. Kept explicit so a snapshot stays comparable
# across runs even as the site grows.
TRACKED_PATHS = [
    "/",
    "/docs",
    "/docs/installation",
    "/docs/cli",
    "/docs/layouts/latex/templates",
    "/docs/layouts/docx",
    "/docs/layouts/latex",
    "/docs/content/rich-text",
    "/docs/ecosystem/action",
    "/docs/comparisons/rendercv",
    "/docs/comparisons/json-resume",
    "/blog",
    "/playground",
    "/gallery",
    "/zh-cn",
    "/zh-tw",
]

TITLE_RE = re.compile(r"<title[^>]*>(.*?)</title>", re.S | re.I)
META_DESC_RE = re.compile(
    r'<meta[^>]+name=["\']description["\'][^>]*content=["\'](.*?)["\']', re.S | re.I
)
META_DESC_RE_ALT = re.compile(
    r'<meta[^>]+content=["\'](.*?)["\'][^>]*name=["\']description["\']', re.S | re.I
)
CANONICAL_RE = re.compile(
    r'<link[^>]+rel=["\']canonical["\'][^>]*href=["\'](.*?)["\']', re.I
)
HREFLANG_RE = re.compile(
    r'<link[^>]+rel=["\']alternate["\'][^>]+hrefLang=["\'](.*?)["\'][^>]*href=["\'](.*?)["\']',
    re.I,
)
ROBOTS_RE = re.compile(
    r'<meta[^>]+name=["\']robots["\'][^>]*content=["\'](.*?)["\']', re.I
)


def fetch_html(url: str, timeout: int = 20) -> tuple[int | None, str]:
    request = urllib.request.Request(url, headers={"User-Agent": "seo-baseline/1.0"})
    try:
        with urllib.request.urlopen(request, timeout=timeout) as response:
            return response.status, response.read().decode("utf-8", "replace")
    except urllib.error.HTTPError as error:
        return error.code, ""
    except Exception as error:  # noqa: BLE001 - report and continue per page
        print(f"  fetch failed {url}: {error}", file=sys.stderr)
        return None, ""


def head_only(html: str) -> str:
    end = html.find("</head>")
    return html[:end] if end != -1 else html


def inspect_page(base_url: str, path: str) -> dict:
    status, html = fetch_html(base_url.rstrip("/") + path)
    head = head_only(html)

    title_match = TITLE_RE.search(head)
    desc_match = META_DESC_RE.search(head) or META_DESC_RE_ALT.search(head)
    canonical_match = CANONICAL_RE.search(head)
    robots_match = ROBOTS_RE.search(head)

    hreflang = {}
    for lang, href in HREFLANG_RE.findall(head):
        hreflang[lang] = href

    return {
        "path": path,
        "status": status,
        "title": title_match.group(1).strip() if title_match else None,
        "title_length": len(title_match.group(1).strip()) if title_match else 0,
        "meta_description": desc_match.group(1).strip() if desc_match else None,
        "meta_description_length": (
            len(desc_match.group(1).strip()) if desc_match else 0
        ),
        "canonical": canonical_match.group(1) if canonical_match else None,
        "hreflang": hreflang,
        "has_x_default": "x-default" in hreflang,
        "robots": robots_match.group(1) if robots_match else None,
    }


def load_gsc_snapshot() -> dict:
    """Read the existing GSC export rather than re-querying the API."""
    if not GSC_RECENT_PAGES.exists():
        return {"available": False, "reason": f"{GSC_RECENT_PAGES.name} not found"}

    data = json.loads(GSC_RECENT_PAGES.read_text(encoding="utf-8"))
    rows = data.get("rows", [])
    by_path = {}
    for row in rows:
        url = row.get("keys", [None])[0]
        if not url:
            continue
        path = url.split("yamlresume.dev", 1)[-1] or "/"
        by_path[path] = {
            "clicks": row.get("clicks"),
            "impressions": row.get("impressions"),
            "ctr": row.get("ctr"),
            "position": row.get("position"),
        }

    return {
        "available": True,
        "source_file": GSC_RECENT_PAGES.name,
        "date_range": data.get("date_range"),
        "totals": data.get("totals"),
        "row_count": len(rows),
        "pages": {path: by_path[path] for path in TRACKED_PATHS if path in by_path},
        "gsc_covered_paths": sorted(by_path),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Capture an SEO baseline snapshot")
    parser.add_argument(
        "--label",
        required=True,
        help="Snapshot label, e.g. before-seo-1",
    )
    parser.add_argument(
        "--base-url",
        default="http://localhost:3111",
        help="Site root to inspect (default: local production server)",
    )
    args = parser.parse_args()

    print(f"[seo-baseline] Inspecting {args.base_url}")
    pages = [inspect_page(args.base_url, path) for path in TRACKED_PATHS]

    snapshot = {
        "label": args.label,
        "captured_at": datetime.now(timezone.utc).isoformat(),
        "base_url": args.base_url,
        "gsc": load_gsc_snapshot(),
        "pages": pages,
    }

    BASELINE_DIR.mkdir(parents=True, exist_ok=True)
    output_path = BASELINE_DIR / f"{args.label}.json"
    output_path.write_text(
        json.dumps(snapshot, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    missing_desc = [p["path"] for p in pages if not p["meta_description"]]
    no_x_default = [p["path"] for p in pages if not p["has_x_default"]]
    print(f"[seo-baseline] Wrote {output_path.relative_to(ROOT)}")
    print(f"[seo-baseline] Pages without meta description: {len(missing_desc)}/{len(pages)}")
    print(f"[seo-baseline] Pages without x-default: {len(no_x_default)}/{len(pages)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
