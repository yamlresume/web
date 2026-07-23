import { IconCode } from '@tabler/icons-react'
import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { FeatureCard } from '@/app/[language]/(home)/components/features/FeatureCard'

describe('FeatureCard', () => {
  it('renders title, description, icon, and demo content', () => {
    render(
      <FeatureCard
        id="test"
        title="Test Feature"
        description="A test description"
        icon={<IconCode data-testid="feature-icon" />}
        demo={<div data-testid="feature-demo">Demo content</div>}
      />
    )

    expect(screen.getByText('Test Feature')).toBeInTheDocument()
    expect(screen.getByText('A test description')).toBeInTheDocument()
    expect(screen.getByTestId('feature-icon')).toBeInTheDocument()
    expect(screen.getByTestId('feature-demo')).toBeInTheDocument()
  })

  it('renders a link overlay when href is provided', () => {
    render(
      <FeatureCard
        id="test"
        title="Linked Feature"
        description="Desc"
        icon={<IconCode />}
        demo={<div>Demo</div>}
        href="/docs"
      />
    )

    const link = screen.getByRole('link', { name: 'Linked Feature' })
    expect(link).toBeInTheDocument()
    expect(link).toHaveAttribute('href', '/docs')
  })

  it('applies the provided className', () => {
    const { container } = render(
      <FeatureCard
        id="test"
        title="Styled"
        description="Desc"
        icon={<IconCode />}
        demo={<div>Demo</div>}
        className="custom-class"
      />
    )

    expect(container.firstChild).toHaveClass('custom-class')
  })
})
