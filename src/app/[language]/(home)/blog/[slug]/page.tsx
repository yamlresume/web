import { InlineTOC } from 'fumadocs-ui/components/inline-toc'
import type { Metadata } from 'next'
import Link from 'next/link'
import { notFound } from 'next/navigation'

import { buildBlogPostingJsonLd, getMDXComponents, JsonLd } from '@/components'
import {
  defaultLanguage,
  getLanguageAlternates,
  type Language,
  languages,
} from '@/i18n'
import { getLocalizedSources } from '@/lib'

export const revalidate = false

export default async function Page(props: {
  params: Promise<{ slug: string; language: string }>
}) {
  const { slug, language } = await props.params
  const { blog } = getLocalizedSources(language)
  const page = blog.getPage([slug])

  if (!page) notFound()
  const Mdx = page.data.body

  const jsonLd = buildBlogPostingJsonLd({
    title: page.data.title,
    description: page.data.description,
    date: page.data.date,
    lastModified: page.data.lastModified,
    author: page.data.author,
    authorUrl: page.data.profile,
    slug,
    language: language as Language,
    image: `/api/og/blog/${slug}/open-graph.png?language=${language}`,
  })

  return (
    <div className="fd-container">
      <JsonLd data={jsonLd} />
      <div className="mt-16">
        <h1 className="mb-2 text-3xl font-bold">{page.data.title}</h1>
        <p className="text-fd-muted-foreground">{page.data.description}</p>
      </div>
      <article className="flex flex-col gap-4 py-8 lg:flex-row">
        <div className="prose flex-4/5">
          <InlineTOC items={page.data.toc} />
          <Mdx components={getMDXComponents()} />
        </div>
        <div className="flex flex-col gap-4 border-l p-4 text-sm flex-1/5">
          <div>
            <p className="mb-1 text-fd-muted-foreground">Written by</p>
            <Link className="font-medium underline" href={page.data.profile}>
              {page.data.author}
            </Link>
          </div>
          <div>
            <p className="mb-1 text-sm text-fd-muted-foreground">At</p>
            <p className="font-medium">
              <time dateTime={new Date(page.data.date).toISOString()}>
                {new Date(page.data.date).toDateString()}
              </time>
            </p>
          </div>
        </div>
      </article>
    </div>
  )
}

export function generateStaticParams(): { slug: string; language: string }[] {
  return languages.flatMap((language) =>
    getLocalizedSources(language)
      .blog.getPages()
      .map((page) => ({
        slug: page.slugs[0],
        language,
      }))
  )
}

export async function generateMetadata(props: {
  params: Promise<{ slug: string; language: string }>
}): Promise<Metadata> {
  const { slug, language } = await props.params
  const { blog } = getLocalizedSources(language)
  const page = blog.getPage([slug])

  if (!page) notFound()

  const image = `/api/og/blog/${slug}/open-graph.png?language=${language}`

  // Build canonical URL
  const canonicalPath =
    language === defaultLanguage ? `/blog/${slug}` : `/${language}/blog/${slug}`

  return {
    title: page.data.title,
    description: page.data.description,
    alternates: {
      canonical: canonicalPath,
      languages: getLanguageAlternates(`/blog/${slug}`),
    },
    openGraph: {
      type: 'article',
      publishedTime: new Date(page.data.date).toISOString(),
      modifiedTime: page.data.lastModified
        ? new Date(page.data.lastModified).toISOString()
        : undefined,
      authors: [page.data.author],
      images: image,
    },
    twitter: {
      card: 'summary_large_image',
      images: image,
    },
  }
}
