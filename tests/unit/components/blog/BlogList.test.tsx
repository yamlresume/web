import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { BlogList } from '@/app/[language]/(home)/blog/components/blog-list'

describe('BlogList', () => {
  const posts = [
    {
      url: '/blog/first',
      title: 'First Post',
      description: 'The first post',
      date: '2024-01-01',
    },
    {
      url: '/blog/second',
      title: 'Second Post',
      description: 'The second post',
      date: '2024-02-01',
    },
  ]

  it('renders the blog title and all posts', () => {
    render(<BlogList posts={posts} />)

    expect(
      screen.getByRole('heading', { name: 'YAMLResume Blog' })
    ).toBeInTheDocument()
    expect(screen.getByRole('link', { name: /First Post/i })).toHaveAttribute(
      'href',
      '/blog/first'
    )
    expect(screen.getByRole('link', { name: /Second Post/i })).toHaveAttribute(
      'href',
      '/blog/second'
    )
  })

  it('renders an empty grid when posts is empty', () => {
    render(<BlogList posts={[]} />)

    expect(
      screen.getByRole('heading', { name: 'YAMLResume Blog' })
    ).toBeInTheDocument()
    expect(screen.queryAllByRole('link')).toHaveLength(0)
  })
})
