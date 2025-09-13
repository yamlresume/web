import type { Metadata } from 'next'
import { getLocalizedSources } from '@/lib'
import { BlogList } from './components'

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

  return {
    title: 'Blog',
    description: 'Latest updates and insights from the YAMLResume team',
    openGraph: {
      images: `/api/og/blog/open-graph.png?language=${language}`,
    },
    twitter: {
      card: 'summary_large_image',
      images: `/api/og/blog/open-graph.png?language=${language}`,
    },
  }
}
