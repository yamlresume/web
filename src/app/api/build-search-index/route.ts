import fs from 'node:fs'
import path from 'node:path'
import { gzipSync } from 'node:zlib'
import { searchAPI } from '@/lib/search-index'

// This static route is evaluated at build time. Its only job is to export the
// Orama search indexes so /api/search can load only the requested locale,
// instead of initializing every language on the first search request.
export const dynamic = 'force-static'
export const revalidate = false

export const GET = async () => {
  const exported = (await searchAPI.export()) as {
    data: Record<string, unknown>
  }
  const outputDir = path.resolve(process.cwd(), '.next/server/search-index')
  fs.mkdirSync(outputDir, { recursive: true })

  for (const [locale, index] of Object.entries(exported.data)) {
    fs.writeFileSync(
      path.join(outputDir, `${locale}.json.gz`),
      gzipSync(JSON.stringify(index))
    )
  }

  return Response.json({ ok: true })
}
