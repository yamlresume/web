import type { Metadata } from 'next'
import { defaultLanguage, languages } from '@/i18n'
import { getLocalizedSources } from '@/lib'
import { BlogList } from './components'

export const revalidate = false

export default async function Home({
  params,
}: {
  params: Promise<{ language: string }>
}) {
  const { language } = await params
  const { blog } = getLocalizedSources(language)

  const posts = blog.getPages().sort((a, b) => {
    const dateA = new Date(a.data.date as string)
    const dateB = new Date(b.data.date as string)
    return dateB.getTime() - dateA.getTime()
  })

  const postsData = posts.map((post) => ({
    url: post.url,
    title: post.data.title as string,
    description: (post.data.description as string) ?? '',
    date: post.data.date as string,
  }))

  return <BlogList posts={postsData} />
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ language: string }>
}): Promise<Metadata> {
  const { language } = await params

  // Build canonical URL
  const canonicalPath =
    language === defaultLanguage ? '/blog' : `/${language}/blog`

  // Build hreflang alternates for all languages
  const languagesAlternates: Record<string, string> = {}
  for (const lang of languages) {
    languagesAlternates[lang] =
      lang === defaultLanguage ? '/blog' : `/${lang}/blog`
  }

  return {
    title: 'Blog',
    description: 'Latest updates and insights from the YAMLResume team',
    alternates: {
      canonical: canonicalPath,
      languages: languagesAlternates,
    },
    openGraph: {
      images: `/api/og/blog/open-graph.png?language=${language}`,
    },
    twitter: {
      card: 'summary_large_image',
      images: `/api/og/blog/open-graph.png?language=${language}`,
    },
  }
}
