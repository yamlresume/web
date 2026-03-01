import { getLocalizedSources } from '@/lib'

function normalizeMdxSlug(slugs: string[]): string[] {
  return slugs
    .map((s, i) => (i === slugs.length - 1 ? s.replace(/\.mdx$/i, '') : s))
    .filter((segment) => segment.length > 0)
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
  const page = docs.getPage(normalizeMdxSlug(pageSlug))

  if (!page) return new Response('Not found', { status: 404 })

  const markdown = await page.data.getText('processed')

  return new Response(markdown, {
    headers: {
      'Content-Type': 'text/markdown; charset=utf-8',
    },
  })
}
