import fs from 'node:fs'
import path from 'node:path'

/**
 * Timestamps for sitemap entries that have no content-level date of their own.
 *
 * Emitting the build time for every such entry teaches Google that `lastmod`
 * carries no information, so each source here is a real "this content last
 * changed" signal rather than "this build ran". Values are resolved once at
 * module load and reused across the request.
 */

const ROOT = process.cwd()

function readJson<T>(relativePath: string): T | null {
  try {
    const raw = fs.readFileSync(path.join(ROOT, relativePath), 'utf8')
    return JSON.parse(raw) as T
  } catch {
    return null
  }
}

/**
 * Build a date that never runs ahead of the actual build, and that is stable
 * between builds. `generatedAt` in the gallery manifest is the moment the
 * sample gallery was regenerated, which is exactly when those pages changed.
 */
function parseDate(value: unknown): Date | null {
  if (typeof value !== 'string') return null

  const date = new Date(value)
  return Number.isNaN(date.getTime()) ? null : date
}

const galleryManifest = readJson<{ generatedAt?: string }>(
  'public/gallery/manifest.json'
)

export const galleryLastModified: Date | null =
  parseDate(galleryManifest?.generatedAt) ?? null

/**
 * The developer docs tree has no per-page timestamp; TypeDoc writes the whole
 * tree in one run, so the newest file mtime is a faithful "last regenerated".
 */
export function developerLastModified(
  packages: string[] = [
    'ai',
    'cli',
    'core',
    'create-yamlresume',
    'json2yamlresume',
    'node',
    'playground',
    'samples',
  ]
): Date | null {
  let newest = 0

  for (const pkg of packages) {
    const file = path.join(ROOT, 'public/developer', pkg, 'index.html')

    try {
      const stats = fs.statSync(file)
      if (stats.mtimeMs > newest) newest = stats.mtimeMs
    } catch {
      // Package not synced yet; skip it rather than failing the sitemap.
    }
  }

  return newest > 0 ? new Date(newest) : null
}

export const developerDocsLastModified: Date | null = developerLastModified()
