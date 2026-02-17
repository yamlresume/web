import { getLocalizedSources } from '@/lib'

function normalizeMdxSlug(slugs: string[]): string[] {
  if (slugs.length === 0) return slugs

  const normalized = [...slugs]
  const last = normalized[normalized.length - 1]
  normalized[normalized.length - 1] = last.replace(/\.mdx$/i, '')

  return normalized.filter((segment) => segment.length > 0)
}

export async function GET(
  _req: Request,
  props: { params: Promise<{ language: string; slug: string[] }> }
) {
  const { language, slug = [] } = await props.params
  const [collection, ...pageSlug] = slug

  if (collection !== 'docs') {
    return new Response('Not found', { status: 404 })
  }

  const { docs } = getLocalizedSources(language)
  const source = docs
  const page = source.getPage(normalizeMdxSlug(pageSlug))

  if (!page) return new Response('Not found', { status: 404 })

  const markdown = await page.data.getText('processed')

  return new Response(markdown, {
    headers: {
      'Content-Type': 'text/markdown; charset=utf-8',
    },
  })
}
