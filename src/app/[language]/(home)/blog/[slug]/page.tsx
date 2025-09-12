import { InlineTOC } from 'fumadocs-ui/components/inline-toc'
import type { Metadata } from 'next'
import Link from 'next/link'
import { notFound } from 'next/navigation'

import { getMDXComponents } from '@/components'
import { getLocalizedSources } from '@/lib'

export default async function Page(props: {
  params: Promise<{ slug: string; language: string }>
}) {
  const { slug, language } = await props.params
  const { blog } = getLocalizedSources(language)
  const page = blog.getPage([slug])

  if (!page) notFound()
  const Mdx = page.data.body

  return (
    <div className="container mx-auto">
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
              {new Date(page.data.date ?? page.file.name).toDateString()}
            </p>
          </div>
        </div>
      </article>
    </div>
  )
}

export function generateStaticParams(): { slug: string; language: string }[] {
  const enParams = getLocalizedSources('en')
    .blog.getPages()
    .map((page) => ({
      slug: page.slugs[0],
      language: 'en',
    }))

  const zhCNParams = getLocalizedSources('zh-cn')
    .blog.getPages()
    .map((page) => ({
      slug: page.slugs[0],
      language: 'zh-cn',
    }))

  const zhTWParams = getLocalizedSources('zh-tw')
    .blog.getPages()
    .map((page) => ({
      slug: page.slugs[0],
      language: 'zh-tw',
    }))

  return [...enParams, ...zhCNParams, ...zhTWParams]
}

export async function generateMetadata(props: {
  params: Promise<{ slug: string; language: string }>
}): Promise<Metadata> {
  const { slug, language } = await props.params
  const { blog } = getLocalizedSources(language)
  const page = blog.getPage([slug])

  if (!page) notFound()

  const image = `/api/og/blog/${slug}/open-graph.png?language=${language}`

  return {
    title: page.data.title,
    description: page.data.description,
    openGraph: {
      images: image,
    },
    twitter: {
      card: 'summary_large_image',
      images: image,
    },
  }
}
