import { render, screen } from '@testing-library/react'
import { setMockParams } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { NewsChannel } from '@/app/[language]/(home)/components/NewsChannel'

describe('NewsChannel', () => {
  it('renders the announcement text and links', () => {
    render(<NewsChannel />)
    expect(screen.getByText('YAMLResume v0.16')).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.16' })
    ).toHaveAttribute('href', '/blog/v0.16')
    expect(
      screen.getByRole('link', {
        name: 'AI translation, a smarter playground, and Node.js APIs',
      })
    ).toHaveAttribute('href', '/blog/v0.16')
  })

  it('localizes the announcement links', () => {
    setMockParams({ language: 'es' })
    render(<NewsChannel />)
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.16' })
    ).toHaveAttribute('href', '/es/blog/v0.16')
    expect(
      screen.getByRole('link', {
        name: 'AI translation, a smarter playground, and Node.js APIs',
      })
    ).toHaveAttribute('href', '/es/blog/v0.16')
  })

  it('falls back to the default language when no language param is set', () => {
    setMockParams({})
    render(<NewsChannel />)
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.16' })
    ).toHaveAttribute('href', '/blog/v0.16')
  })
})
