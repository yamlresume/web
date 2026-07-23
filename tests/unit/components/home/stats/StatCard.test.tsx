import { IconStar } from '@tabler/icons-react'
import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { StatCard } from '@/app/[language]/(home)/components/stats/StatCard'

describe('StatCard', () => {
  it('renders the icon, value, and label', () => {
    render(
      <StatCard
        icon={<IconStar data-testid="star-icon" />}
        value={1234}
        label="GitHub Stars"
      />
    )
    expect(screen.getByTestId('star-icon')).toBeInTheDocument()
    expect(screen.getByText('1,234')).toBeInTheDocument()
    expect(screen.getByText('GitHub Stars')).toBeInTheDocument()
  })

  it('formats numeric values with locale separators', () => {
    render(
      <StatCard
        icon={<IconStar data-testid="star-icon" />}
        value={1000000}
        label="Downloads"
      />
    )
    expect(screen.getByText('1,000,000')).toBeInTheDocument()
  })

  it('renders string values without formatting', () => {
    render(
      <StatCard
        icon={<IconStar data-testid="star-icon" />}
        value="100%"
        label="Test Coverage"
      />
    )
    expect(screen.getByText('100%')).toBeInTheDocument()
  })

  it('renders a linked card when href is provided', () => {
    render(
      <StatCard
        icon={<IconStar data-testid="star-icon" />}
        value={1234}
        label="GitHub Stars"
        href="https://github.com/yamlresume/yamlresume"
      />
    )
    const link = screen.getByRole('link', {
      name: 'GitHub Stars (opens in a new tab)',
    })
    expect(link).toHaveAttribute(
      'href',
      'https://github.com/yamlresume/yamlresume'
    )
  })

  it('does not render a link when href is omitted', () => {
    render(
      <StatCard
        icon={<IconStar data-testid="star-icon" />}
        value={1234}
        label="GitHub Stars"
      />
    )
    expect(screen.queryByRole('link')).not.toBeInTheDocument()
  })
})
