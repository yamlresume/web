import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { HomeGallerySection } from '@/app/[language]/(home)/components/HomeGallerySection'

describe('HomeGallerySection', () => {
  it('renders four representative resumes and a gallery CTA', () => {
    render(<HomeGallerySection language="en" />)

    expect(
      screen.getByRole('heading', {
        name: 'Resume examples built with YAMLResume',
      })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: 'Explore all resumes' })
    ).toHaveAttribute('href', '/gallery')

    const expectedTitles = [
      'Software Engineer',
      'Product Manager',
      'Data Scientist',
      'UX Designer',
    ]

    for (const title of expectedTitles) {
      expect(
        screen.getByRole('link', { name: new RegExp(title) })
      ).toHaveAttribute(
        'href',
        expect.stringMatching(/^\/gallery\/examples\/.+\/en$/)
      )
    }
  })

  it('uses localized copy, samples, and links', () => {
    render(<HomeGallerySection language="es" />)

    expect(
      screen.getByRole('heading', {
        name: 'Ejemplos de currículum creados con YAMLResume',
      })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('link', {
        name: 'Explorar todos los currículums',
      })
    ).toHaveAttribute('href', '/es/gallery')
    expect(
      screen.getByRole('link', { name: /Ingeniero de software/ })
    ).toHaveAttribute('href', '/es/gallery/examples/software-engineer/es')
  })
})
