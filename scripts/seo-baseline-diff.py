#!/usr/bin/env python3
"""
Compare two SEO baseline snapshots and report what moved.

Usage:
    python3 scripts/seo-baseline-diff.py before-seo-1 after-seo-1

Prints per-page on-page changes (title, description length, canonical,
x-default, robots) and GSC metric changes for the tracked paths present in
both snapshots. Exits non-zero only on usage errors, so it is safe to run in
a workflow that should not fail on "nothing changed".
"""

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BASELINE_DIR = ROOT / "yamlresume.dev-audit" / "baselines"

PAGE_FIELDS = [
    "status",
    "title",
    "title_length",
    "meta_description_length",
    "canonical",
    "has_x_default",
    "robots",
]


def load(label: str) -> dict:
    path = BASELINE_DIR / f"{label}.json"
    if not path.exists():
        print(f"Snapshot not found: {path}", file=sys.stderr)
        sys.exit(1)
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> int:
    parser = argparse.ArgumentParser(description="Diff two SEO baselines")
    parser.add_argument("before", help="Label of the earlier snapshot")
    parser.add_argument("after", help="Label of the later snapshot")
    args = parser.parse_args()

    before = load(args.before)
    after = load(args.after)

    print(f"before: {before['label']}  captured {before['captured_at']}")
    print(f"after:  {after['label']}  captured {after['captured_at']}")

    before_pages = {page["path"]: page for page in before["pages"]}
    after_pages = {page["path"]: page for page in after["pages"]}

    onpage_changes = 0
    print("\n== On-page changes ==")
    for path in sorted(set(before_pages) | set(after_pages)):
        old = before_pages.get(path)
        new = after_pages.get(path)
        if old is None or new is None:
            print(f"  {path}: {'added' if old is None else 'removed'}")
            onpage_changes += 1
            continue

        deltas = [
            f"{field}: {old.get(field)!r} -> {new.get(field)!r}"
            for field in PAGE_FIELDS
            if old.get(field) != new.get(field)
        ]
        if deltas:
            onpage_changes += 1
            print(f"  {path}")
            for delta in deltas:
                print(f"    {delta}")

    if onpage_changes == 0:
        print("  (no on-page changes)")

    old_gsc = before.get("gsc", {})
    new_gsc = after.get("gsc", {})
    print("\n== GSC totals ==")
    old_totals = old_gsc.get("totals") or {}
    new_totals = new_gsc.get("totals") or {}
    for key in ("clicks", "impressions", "ctr", "position"):
        if key in old_totals or key in new_totals:
            print(f"  {key}: {old_totals.get(key)} -> {new_totals.get(key)}")
    print(f"  source: {old_gsc.get('date_range')} -> {new_gsc.get('date_range')}")

    print("\n== GSC per-page ==")
    old_pages = old_gsc.get("pages") or {}
    new_pages = new_gsc.get("pages") or {}
    rows = 0
    for path in sorted(set(old_pages) | set(new_pages)):
        old = old_pages.get(path) or {}
        new = new_pages.get(path) or {}
        deltas = [
            f"{field}: {old.get(field)} -> {new.get(field)}"
            for field in ("clicks", "impressions", "ctr", "position")
            if old.get(field) != new.get(field)
        ]
        if deltas:
            rows += 1
            print(f"  {path}")
            for delta in deltas:
                print(f"    {delta}")
    if rows == 0:
        print("  (no GSC changes)")

    return 0


if __name__ == "__main__":
    sys.exit(main())
