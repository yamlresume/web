import { docsSource } from '@/lib/source'
import { getMDXComponents } from '@/mdx-components'
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

  const time = await getGithubLastEdit({
    owner: 'yamlresume',
    repo: 'web',
    path: `content/docs/${page.file.path}`,
  })

  return (
    <DocsPage
      toc={page.data.toc}
      tableOfContent={{ style: 'clerk', single: false }}
      full={page.data.full}
      editOnGithub={{
        owner: 'yamlresume',
        repo: 'web',
        sha: 'main',
        path: `content/docs/${page.file.path}`,
      }}
      // @ts-ignore
      lastUpdate={time}
    >
      <DocsTitle>{page.data.title}</DocsTitle>
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
