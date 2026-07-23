import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { Logo } from '@/components/logo'

describe('Logo', () => {
  it('renders an SVG with the expected title and img role', () => {
    render(<Logo />)

    const svg = screen.getByRole('img', { hidden: true })
    expect(svg).toBeInTheDocument()
    expect(svg).toHaveAttribute('aria-label', 'YAMLResume Logo')
    expect(svg).toHaveAttribute('aria-hidden', 'true')
    expect(
      screen.getByTitle('YAMLResume Logo - Balanced Y with Padding')
    ).toBeInTheDocument()
  })
})
