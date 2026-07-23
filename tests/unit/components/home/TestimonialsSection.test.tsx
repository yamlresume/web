import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { TestimonialsSection } from '@/app/[language]/(home)/components/TestimonialsSection'
import { TESTIMONIALS } from '@/app/[language]/(home)/components/testimonials'

describe('TestimonialsSection', () => {
  it('renders the section title', () => {
    render(<TestimonialsSection />)
    expect(
      screen.getByRole('heading', { name: 'What People Say' })
    ).toBeInTheDocument()
  })

  it('renders a card for every testimonial', () => {
    render(<TestimonialsSection />)
    const links = screen.getAllByRole('link')
    expect(links).toHaveLength(TESTIMONIALS.length)
  })

  it('renders each author name and external link', () => {
    render(<TestimonialsSection />)
    for (const testimonial of TESTIMONIALS) {
      expect(screen.getByText(testimonial.author)).toBeInTheDocument()
      const link = screen.getByRole('link', {
        name: `View testimonial by ${testimonial.author} (opens in a new tab)`,
      })
      expect(link).toHaveAttribute('href', testimonial.url)
      expect(link).toHaveAttribute('target', '_blank')
    }
  })
})
