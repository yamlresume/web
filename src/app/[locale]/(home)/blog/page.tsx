import { blogSource } from '@/lib/source'
import { BlogList } from './blog-list'

export default function Home() {
  const posts = blogSource.getPages().sort((a, b) => {
    const dateA = new Date(a.data.date as string)
    const dateB = new Date(b.data.date as string)
    return dateB.getTime() - dateA.getTime()
  })

  const postsData = posts.map(post => ({
    url: post.url,
    title: post.data.title as string,
    description: (post.data.description as string) ?? '',
    date: post.data.date as string
  }))

  return <BlogList posts={postsData} />
}
