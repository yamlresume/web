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
import {
  buildDocsBreadcrumbJsonLd,
  getMDXComponents,
  JsonLd,
  LLMCopyButton,
  ViewOptions,
} from '@/components'
import {
  defaultLanguage,
  getLanguageAlternates,
  type Language,
  languages,
} from '@/i18n'
import { getLocalizedSources } from '@/lib'

export const revalidate = false

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

  const breadcrumbEntries = [
    { name: 'Docs', path: '/docs' },
    ...(slug ?? []).map((segment, index) => {
      const ancestor = docs.getPage((slug ?? []).slice(0, index + 1))
      return {
        name: ancestor?.data.title ?? segment,
        path: `/docs/${(slug ?? []).slice(0, index + 1).join('/')}`,
      }
    }),
  ]

  return (
    <>
      <JsonLd
        data={buildDocsBreadcrumbJsonLd({
          language: language as Language,
          entries: breadcrumbEntries,
        })}
      />
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
    </>
  )
}

export async function generateStaticParams() {
  return languages.flatMap((language) =>
    getLocalizedSources(language)
      .docs.generateParams()
      .map((p) => ({ ...p, language }))
  )
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

  // Build canonical URL
  const slugPath = slug.length > 0 ? `/${slug.join('/')}` : ''
  const canonicalPath =
    language === defaultLanguage
      ? `/docs${slugPath}`
      : `/${language}/docs${slugPath}`

  return {
    title: page.data.title,
    description: page.data.description,
    alternates: {
      canonical: canonicalPath,
      languages: getLanguageAlternates(`/docs${slugPath}`),
    },
    openGraph: {
      images: image,
    },
    twitter: {
      card: 'summary_large_image',
      images: image,
    },
  }
}
