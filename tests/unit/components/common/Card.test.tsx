import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { Card } from '@/app/[language]/(home)/components/common/Card'

describe('Card', () => {
  it('renders children without a link', () => {
    render(<Card className="extra">Content</Card>)
    expect(screen.getByText('Content')).toBeInTheDocument()
    expect(screen.queryByRole('link')).not.toBeInTheDocument()
  })

  it('renders an internal link when href is relative', () => {
    render(<Card href="/docs">Linked</Card>)
    expect(screen.getByRole('link', { name: 'View details' })).toHaveAttribute(
      'href',
      '/docs'
    )
  })

  it('renders an external anchor for absolute URLs', () => {
    render(<Card href="https://example.com">External</Card>)
    const link = screen.getByRole('link', { name: /opens in a new tab/i })
    expect(link).toHaveAttribute('href', 'https://example.com')
    expect(link).toHaveAttribute('target', '_blank')
  })

  it('forces internal Link when external is explicitly false', () => {
    render(
      <Card href="https://example.com" external={false}>
        Internal-looking
      </Card>
    )
    const link = screen.getByRole('link', { name: 'View details' })
    expect(link).toHaveAttribute('href', 'https://example.com')
    expect(link).not.toHaveAttribute('target', '_blank')
  })

  it('uses the custom aria label when provided', () => {
    render(
      <Card href="/docs" ariaLabel="Read documentation">
        Linked
      </Card>
    )
    expect(
      screen.getByRole('link', { name: 'Read documentation' })
    ).toBeInTheDocument()
  })

  it('applies the provided className', () => {
    const { container } = render(<Card className="my-extra-class">Child</Card>)
    expect(container.firstChild).toHaveClass('my-extra-class')
  })
})
