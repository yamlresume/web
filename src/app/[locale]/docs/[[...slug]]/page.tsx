import { LLMCopyButton, ViewOptions } from '@/components/ai/page-actions'
import { getLocalizedSources } from '@/lib/source'
import { getMDXComponents } from '@/mdx-components'
import clsx from 'clsx'
import { getGithubLastEdit } from 'fumadocs-core/server'
import { createRelativeLink } from 'fumadocs-ui/mdx'
import {
  DocsBody,
  DocsDescription,
  DocsPage,
  DocsTitle,
} from 'fumadocs-ui/page'
import { notFound } from 'next/navigation'

export default async function Page(props: {
  params: Promise<{ slug?: string[]; locale: string }>
}) {
  const params = await props.params
  const { docs } = getLocalizedSources(params.locale)
  const page = docs.getPage(params.slug)
  if (!page) notFound()

  const MDXContent = page.data.body
  const owner = 'yamlresume'
  const repo = 'web'

  // Get the correct content path based on locale
  const contentPath = params.locale === 'en' 
    ? `content/docs/${page.file.path}`
    : `content/${params.locale}/docs/${page.file.path}`

  // const time = await getGithubLastEdit({
  //   owner,
  //   repo,
  //   path: contentPath,
  // })
  const time = undefined

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
      // @ts-ignore
      lastUpdate={time}
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
  // Generate params for all locales
  const enParams = getLocalizedSources('en').docs.generateParams().map(p => ({ ...p, locale: 'en' }))
  const zhCNParams = getLocalizedSources('zh-CN').docs.generateParams().map(p => ({ ...p, locale: 'zh-CN' }))
  const zhTWParams = getLocalizedSources('zh-TW').docs.generateParams().map(p => ({ ...p, locale: 'zh-TW' }))
  
  return [...enParams, ...zhCNParams, ...zhTWParams]
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug?: string[]; locale: string }>
}) {
  const { slug = [], locale } = await params
  const { docs } = getLocalizedSources(locale)
  const page = docs.getPage(slug)
  if (!page) notFound()

  const image = ['api', 'og', 'docs', ...slug, 'open-graph.png'].join('/')
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
