import clsx from 'clsx'
import { createRelativeLink } from 'fumadocs-ui/mdx'
import {
  DocsBody,
  DocsDescription,
  DocsPage,
  DocsTitle,
} from 'fumadocs-ui/page'
import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { getMDXComponents, LLMCopyButton, ViewOptions } from '@/components'
import { defaultLanguage } from '@/i18n'
import { getLocalizedSources } from '@/lib'

export default async function Page(props: {
  params: Promise<{ slug?: string[]; language: string }>
}) {
  const { slug, language } = await props.params
  const { docs } = getLocalizedSources(language)
  const page = docs.getPage(slug)
  if (!page) notFound()

  const MDXContent = page.data.body
  const owner = 'yamlresume'
  const repo = 'web'

  // Get the correct content path based on language
  const contentPath =
    language === defaultLanguage
      ? `content/docs/${page.path}`
      : `content/${language}/docs/${page.path}`

  const lastUpdate = page.data.lastModified

  return (
    <DocsPage
      toc={page.data.toc}
      tableOfContent={{ style: 'clerk', single: false }}
      full={page.data.full}
      editOnGithub={{
        owner,
        repo,
        sha: 'main',
        path: contentPath,
      }}
      lastUpdate={lastUpdate}
    >
      <DocsTitle>{page.data.title}</DocsTitle>
      <div
        className={clsx(
          'flex',
          'flex-row',
          'gap-2',
          'items-center',
          'border-b-[1px]',
          'border-fd-foreground',
          'pb-6'
        )}
      >
        <LLMCopyButton markdownUrl={`${page.url}.mdx`} />
        <ViewOptions
          markdownUrl={`${page.url}.mdx`}
          githubUrl={`https://github.com/${owner}/${repo}/blob/main/${contentPath}`}
        />
      </div>
      <DocsDescription>{page.data.description}</DocsDescription>
      <DocsBody>
        <MDXContent
          components={getMDXComponents({
            a: createRelativeLink(docs, page),
          })}
        />
      </DocsBody>
    </DocsPage>
  )
}

export async function generateStaticParams() {
  // Generate params for all languages
  const enParams = getLocalizedSources('en')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'en' }))

  const frParams = getLocalizedSources('fr')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'fr' }))

  const jaParams = getLocalizedSources('ja')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'ja' }))

  const zhCNParams = getLocalizedSources('zh-cn')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'zh-cn' }))

  const zhTWParams = getLocalizedSources('zh-tw')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'zh-tw' }))

  const esParams = getLocalizedSources('es')
    .docs.generateParams()
    .map((p) => ({ ...p, language: 'es' }))

  return [
    ...enParams,
    ...frParams,
    ...jaParams,
    ...zhCNParams,
    ...zhTWParams,
    ...esParams,
  ]
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug?: string[]; language: string }>
}): Promise<Metadata> {
  const { slug = [], language } = await params
  const { docs } = getLocalizedSources(language)
  const page = docs.getPage(slug)
  if (!page) notFound()

  const image = `/api/og/docs/${slug.join('/')}/open-graph.png?language=${language}`
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
