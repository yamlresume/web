import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { Section } from '@/app/[language]/(home)/components/common/Section'

describe('Section', () => {
  it('renders the title inside a level-two heading', () => {
    render(
      <Section title="Section Title">
        <div>Child content</div>
      </Section>
    )
    expect(
      screen.getByRole('heading', { level: 2, name: 'Section Title' })
    ).toBeInTheDocument()
  })

  it('renders children', () => {
    render(
      <Section title="Section Title">
        <div data-testid="child">Child content</div>
      </Section>
    )
    expect(screen.getByTestId('child')).toBeInTheDocument()
  })

  it('applies the optional className to the section element', () => {
    const { container } = render(
      <Section title="Section Title" className="extra-class">
        <div />
      </Section>
    )
    expect(container.querySelector('section')).toHaveClass('extra-class')
  })
})
