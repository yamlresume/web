import { LLMCopyButton, ViewOptions } from '@/components/ai/page-actions'
import { docsSource } from '@/lib/source'
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
  params: Promise<{ slug?: string[] }>
}) {
  const params = await props.params
  const page = docsSource.getPage(params.slug)
  if (!page) notFound()

  const MDXContent = page.data.body
  const owner = 'yamlresume'
  const repo = 'web'

  // const time = await getGithubLastEdit({
  //   owner,
  //   repo,
  //   path: `content/docs/${page.file.path}`,
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
        path: `content/docs/${page.file.path}`,
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
          githubUrl={`https://github.com/${owner}/${repo}/blob/main/content/docs/${page.file.path}`}
        />
      </div>
      <DocsDescription>{page.data.description}</DocsDescription>
      <DocsBody>
        <MDXContent
          components={getMDXComponents({
            a: createRelativeLink(docsSource, page),
          })}
        />
      </DocsBody>
    </DocsPage>
  )
}

export async function generateStaticParams() {
  return docsSource.generateParams()
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug?: string[] }>
}) {
  const { slug = [] } = await params
  const page = docsSource.getPage(slug)
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
