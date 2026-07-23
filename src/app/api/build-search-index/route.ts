import fs from 'node:fs'
import path from 'node:path'
import { searchAPI } from '@/lib/search-index'

// This static route is evaluated at build time. Its only job is to export the
// Orama search index to a file that the dynamic /api/search route can load
// quickly at runtime, avoiding the Vercel FUNCTION_INVOCATION_TIMEOUT caused by
// building the index on every cold start.
export const dynamic = 'force-static'
export const revalidate = false

export const GET = async () => {
  const exported = await searchAPI.export()
  const outputPath = path.resolve(
    process.cwd(),
    '.next/server/search-index.json'
  )
  fs.mkdirSync(path.dirname(outputPath), { recursive: true })
  fs.writeFileSync(outputPath, JSON.stringify(exported))
  return Response.json({ ok: true })
}
