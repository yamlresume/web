import { blog } from '@/lib/source'
import clsx from 'clsx'
import Link from 'next/link'

import { BlogPostCard } from './components'

export default function Home() {
  const posts = blog.getPages()

  return (
    <main className="container mx-auto py-8 mt-24 min-h-[900px]">
      <h1 className="text-4xl font-bold mb-8">YAMLResume Blog</h1>
      <div
        className={clsx([
          'grid',
          'grid-cols-1',
          'md:grid-cols-2',
          'lg:grid-cols-3',
          'border-l',
        ])}
      >
        {posts.map((post) => (
          <Link key={post.url} href={post.url}>
            <BlogPostCard
              title={post.data.title}
              description={post.data.description ?? ''}
              date={post.data.date}
            />
          </Link>
        ))}
      </div>
    </main>
  )
}
