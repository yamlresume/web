import { notFound } from 'next/navigation'
import { ImageResponse } from 'next/og'

import { OpenGraph } from '@/app/api/og/components'
import { defaultLanguage } from '@/i18n'
import {
  blogSource,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceZhCN,
  docsSourceZhTW,
} from '@/lib'

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

  if (!isBlog && !isDocs) {
    notFound()
  }

  // Get the appropriate source based on language and type
  let source:
    | typeof blogSource
    | typeof blogSourceZhCN
    | typeof blogSourceZhTW
    | typeof docsSource
    | typeof docsSourceZhCN
    | typeof docsSourceZhTW

  if (isBlog) {
    switch (language) {
      case 'zh-cn':
        source = blogSourceZhCN
        break
      case 'zh-tw':
        source = blogSourceZhTW
        break
      default:
        source = blogSource
    }
  } else {
    switch (language) {
      case 'zh-cn':
        source = docsSourceZhCN
        break
      case 'zh-tw':
        source = docsSourceZhTW
        break
      default:
        source = docsSource
    }
  }

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
  const params = []

  // Generate params for blog (English only)
  const blogParams = blogSource.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogParams)

  // Generate params for docs in all languages
  const docsParams = docsSource.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsParams)

  const docsZhCNParams = docsSourceZhCN.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsZhCNParams)

  const docsZhTWParams = docsSourceZhTW.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsZhTWParams)

  return params
}
