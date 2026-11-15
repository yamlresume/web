import { notFound } from 'next/navigation'
import { ImageResponse } from 'next/og'

import { OpenGraph } from '@/app/api/og/components'
import { defaultLanguage, getGalleryMessages, languages } from '@/i18n'
import { getLocalizedSources } from '@/lib'

export const revalidate = false

export async function GET(
  req: Request,
  { params }: { params: Promise<{ slug: string[] }> }
) {
  const { slug } = await params
  const url = new URL(req.url)
  const language = url.searchParams.get('language') || defaultLanguage

  // Determine if this is a blog or docs request
  const isBlog = slug[0] === 'blog'
  const isDocs = slug[0] === 'docs'
  const isGallery = slug[0] === 'gallery'

  if (isGallery) {
    const category =
      slug[1] === 'templates' ||
      slug[1] === 'languages' ||
      slug[1] === 'examples'
        ? slug[1]
        : 'gallery'
    const title = getGalleryMessages(defaultLanguage).metadata[category].title

    return new ImageResponse(<OpenGraph title={title} />, {
      width: 1200,
      height: 630,
    })
  }

  if (!isBlog && !isDocs) {
    notFound()
  }

  const sources = getLocalizedSources(language)
  const source = isBlog ? sources.blog : sources.docs

  // Remove the type prefix and the .png suffix
  const pageSlug = slug.slice(1, -1)
  const page = source.getPage(pageSlug)

  if (!page) notFound()

  return new ImageResponse(<OpenGraph title={page.data.title} />, {
    width: 1200,
    height: 630,
  })
}

export function generateStaticParams() {
  const params = [
    { slug: ['gallery', 'open-graph.png'] },
    { slug: ['gallery', 'templates', 'open-graph.png'] },
    { slug: ['gallery', 'languages', 'open-graph.png'] },
    { slug: ['gallery', 'examples', 'open-graph.png'] },
  ]

  // Every locale resolves to its own tree, but the route only varies by
  // `?language=`, so the slugs are shared. Dedupe them.
  const seen = new Set(params.map(({ slug }) => slug.join('/')))

  for (const language of languages) {
    const { blog, docs } = getLocalizedSources(language)

    for (const [type, source] of [
      ['blog', blog],
      ['docs', docs],
    ] as const) {
      for (const page of source.generateParams()) {
        const slug = [type, ...page.slug, 'open-graph.png']
        const key = slug.join('/')
        if (seen.has(key)) continue
        seen.add(key)
        params.push({ slug })
      }
    }
  }

  return params
}
