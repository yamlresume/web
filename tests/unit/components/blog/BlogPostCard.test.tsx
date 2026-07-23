import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { BlogPostCard } from '@/app/[language]/(home)/blog/components/blog-post-card'

describe('BlogPostCard', () => {
  it('renders title, description, and string date', () => {
    render(
      <BlogPostCard
        title="Hello YAMLResume"
        description="A post about YAMLResume"
        date="2024-01-15"
      />
    )

    expect(
      screen.getByRole('heading', { name: 'Hello YAMLResume' })
    ).toBeInTheDocument()
    expect(screen.getByText('A post about YAMLResume')).toBeInTheDocument()
    expect(screen.getByText('2024-01-15')).toBeInTheDocument()
  })

  it('formats a Date instance', () => {
    render(
      <BlogPostCard
        title="Date Test"
        description="Checking date formatting"
        date={new Date('2024-06-01')}
      />
    )

    expect(screen.getByText(/2024/)).toBeInTheDocument()
    expect(screen.getByText('Date Test')).toBeInTheDocument()
  })
})
