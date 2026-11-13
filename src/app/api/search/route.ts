import fs from 'node:fs'
import path from 'node:path'
import { gunzipSync, gzipSync } from 'node:zlib'
import { create, getByID, load, search as oramaSearch } from '@orama/orama'
import { createTokenizer as createJapaneseTokenizer } from '@orama/tokenizers/japanese'
import { createTokenizer as createMandarinTokenizer } from '@orama/tokenizers/mandarin'
import { createContentHighlighter } from 'fumadocs-core/search'
import { i18nConfig, type Language, languages } from '@/i18n'

// Load only the requested pre-built Orama index generated at build time. This
// bounds cold-start work and memory by locale instead of initializing every
// language on the first search request.
const advancedSchema = {
  content: 'string',
  page_id: 'string',
  type: 'string',
  tags: 'enum[]',
  url: 'string',
} as const

type AdvancedDocument = {
  content: string
  page_id: string
  type: string
  tags: string[]
  url: string
}

type ExportedIndex = {
  type: 'advanced'
  internalDocumentIDStore: { internalIdToId: string[] }
  index: unknown
  docs: unknown
  sorting: unknown
  language: string
}

type SearchHandler = { db: ReturnType<typeof create>; language: string }

const dbLoads = new Map<string, Promise<SearchHandler>>()

async function loadIndex(locale: string): Promise<ExportedIndex> {
  const indexPath = path.resolve(
    process.cwd(),
    `.next/server/search-index/${locale}.json.gz`
  )

  if (fs.existsSync(indexPath)) {
    const compressed = fs.readFileSync(indexPath)
    return JSON.parse(gunzipSync(compressed).toString('utf8')) as ExportedIndex
  }

  const { searchAPI } = await import('@/lib/search-index')
  const exported = (await searchAPI.export()) as {
    data: Record<string, ExportedIndex>
  }
  const index = exported.data[locale]

  if (!index) {
    throw new Error(`Search index not found for locale: ${locale}`)
  }

  fs.mkdirSync(path.dirname(indexPath), { recursive: true })
  fs.writeFileSync(indexPath, gzipSync(JSON.stringify(index)))
  return index
}

function createSearchHandler(index: ExportedIndex): SearchHandler {
  const createParams: Parameters<typeof create>[0] = {
    schema: advancedSchema,
  }

  if (index.language === 'mandarin') {
    createParams.components = { tokenizer: createMandarinTokenizer() }
  } else if (index.language === 'japanese') {
    createParams.components = { tokenizer: createJapaneseTokenizer() }
  } else {
    createParams.language = index.language
  }

  const db = create(createParams)
  load(db, index as unknown as Parameters<typeof load>[1])
  return { db, language: index.language }
}

async function loadDB(locale: string): Promise<SearchHandler> {
  let pending = dbLoads.get(locale)

  if (!pending) {
    pending = loadIndex(locale).then(createSearchHandler)
    dbLoads.set(locale, pending)
  }

  try {
    return await pending
  } catch (error) {
    dbLoads.delete(locale)
    throw error
  }
}

async function searchAdvanced(
  db: ReturnType<typeof create>,
  query: string,
  tag: string[] = [],
  language: string
) {
  const baseParams = {
    groupBy: {
      properties: ['page_id'] as const,
      maxResult: 8,
    },
  }

  const searchParams =
    query.length > 0
      ? {
          ...baseParams,
          term: query,
          properties: ['content'] as const,
        }
      : baseParams

  const whereParams =
    tag.length > 0
      ? {
          ...searchParams,
          where: { tags: { containsAll: tag } },
        }
      : searchParams

  const highlighter = createContentHighlighter(query)
  const searchOptions =
    language === 'mandarin' || language === 'japanese'
      ? { threshold: 0, tolerance: 0 }
      : {}
  const result = await oramaSearch(db, {
    ...searchOptions,
    ...whereParams,
  } as unknown as Parameters<typeof oramaSearch>[1])
  const list: {
    id: string
    type: string
    content: string
    contentWithHighlights: ReturnType<typeof highlighter.highlight>
    url: string
  }[] = []

  for (const item of result.groups ?? []) {
    const pageId = item.values[0] as string
    const page = getByID(db, pageId) as AdvancedDocument | undefined

    if (!page) continue

    list.push({
      id: pageId,
      type: 'page',
      content: page.content,
      contentWithHighlights: highlighter.highlight(page.content),
      url: page.url,
    })

    for (const hit of item.result) {
      const doc = hit.document as AdvancedDocument
      if (doc.type === 'page') continue
      list.push({
        id: doc.page_id,
        content: doc.content,
        contentWithHighlights: highlighter.highlight(doc.content),
        type: doc.type,
        url: doc.url,
      })
    }
  }

  return list
}

export const GET = async (request: Request) => {
  const url = new URL(request.url)
  const query = url.searchParams.get('query')
  if (!query) return Response.json([])

  const locale = url.searchParams.get('locale') ?? i18nConfig.defaultLanguage
  if (!languages.includes(locale as Language)) return Response.json([])

  const tag = url.searchParams.get('tag')?.split(',') ?? []
  const handler = await loadDB(locale)

  return Response.json(
    await searchAdvanced(handler.db, query, tag, handler.language)
  )
}
