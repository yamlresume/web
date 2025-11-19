import { notFound } from 'next/navigation'
import { ImageResponse } from 'next/og'

import { OpenGraph } from '@/app/api/og/components'
import { defaultLanguage } from '@/i18n'
import {
  blogSource,
  blogSourceFr,
  blogSourceJa,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceFr,
  docsSourceJa,
  docsSourceZhCN,
  docsSourceZhTW,
} from '@/lib'
import { blogSourceEs, docsSourceEs } from '@/lib/source'

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
    | typeof blogSourceFr
    | typeof blogSourceJa
    | typeof blogSourceEs
    | typeof docsSource
    | typeof docsSourceZhCN
    | typeof docsSourceZhTW
    | typeof docsSourceFr
    | typeof docsSourceJa
    | typeof docsSourceEs

  if (isBlog) {
    switch (language) {
      case 'fr':
        source = blogSourceFr
        break
      case 'ja':
        source = blogSourceJa
        break
      case 'zh-cn':
        source = blogSourceZhCN
        break
      case 'zh-tw':
        source = blogSourceZhTW
        break
      case 'es':
        source = blogSourceEs
        break
      default:
        source = blogSource
    }
  } else {
    switch (language) {
      case 'fr':
        source = docsSourceFr
        break
      case 'ja':
        source = docsSourceJa
        break
      case 'zh-cn':
        source = docsSourceZhCN
        break
      case 'zh-tw':
        source = docsSourceZhTW
        break
      case 'es':
        source = docsSourceEs
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

  const blogFrParams = blogSourceFr.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogFrParams)

  const blogJaParams = blogSourceJa.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogJaParams)

  const blogZhCNParams = blogSourceZhCN.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogZhCNParams)

  const blogZhTWParams = blogSourceZhTW.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogZhTWParams)

  const blogEsParams = blogSourceEs.generateParams().map((page) => ({
    slug: ['blog', ...page.slug, 'open-graph.png'],
  }))
  params.push(...blogEsParams)

  // Generate params for docs in all languages
  const docsParams = docsSource.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsParams)

  const docsFrParams = docsSourceFr.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsFrParams)

  const docsJaParams = docsSourceJa.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsJaParams)

  const docsZhCNParams = docsSourceZhCN.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsZhCNParams)

  const docsZhTWParams = docsSourceZhTW.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsZhTWParams)

  const docsEsParams = docsSourceEs.generateParams().map((page) => ({
    slug: ['docs', ...page.slug, 'open-graph.png'],
  }))
  params.push(...docsEsParams)

  return params
}
