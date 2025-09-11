'use client'

import { useTranslations } from '@/i18n'
import clsx from 'clsx'
import Link from 'next/link'

import { BlogPostCard } from './blog-post-card'

interface BlogPost {
  url: string
  title: string
  description: string
  date: string
}

interface BlogListProps {
  posts: BlogPost[]
}

export function BlogList({ posts }: BlogListProps) {
  const t = useTranslations('blog')

  return (
    <main className="container mx-auto py-8 mt-24 min-h-[900px]">
      <h1 className="text-4xl font-bold mb-8">{t('title')}</h1>
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
              title={post.title}
              description={post.description}
              date={post.date}
            />
          </Link>
        ))}
      </div>
    </main>
  )
}
