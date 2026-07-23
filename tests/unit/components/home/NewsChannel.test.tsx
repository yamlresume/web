import { render, screen } from '@testing-library/react'
import { setMockParams } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { NewsChannel } from '@/app/[language]/(home)/components/NewsChannel'

describe('NewsChannel', () => {
  it('renders the announcement text and links', () => {
    render(<NewsChannel />)
    expect(screen.getByText('YAMLResume v0.13')).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.13' })
    ).toHaveAttribute('href', '/blog/v0.13')
    expect(
      screen.getByRole('link', { name: 'DOCX rendering engine' })
    ).toHaveAttribute('href', '/docs/layouts/docx')
    expect(
      screen.getByRole('link', {
        name: 'Brazilian Portuguese language support',
      })
    ).toHaveAttribute('href', '/docs/locale/brazilian-portuguese')
  })

  it('localizes the announcement links', () => {
    setMockParams({ language: 'es' })
    render(<NewsChannel />)
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.13' })
    ).toHaveAttribute('href', '/es/blog/v0.13')
    expect(
      screen.getByRole('link', { name: 'DOCX rendering engine' })
    ).toHaveAttribute('href', '/es/docs/layouts/docx')
  })

  it('falls back to the default language when no language param is set', () => {
    setMockParams({})
    render(<NewsChannel />)
    expect(
      screen.getByRole('link', { name: 'YAMLResume v0.13' })
    ).toHaveAttribute('href', '/blog/v0.13')
  })
})
