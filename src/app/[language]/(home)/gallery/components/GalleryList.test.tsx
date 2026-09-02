import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { GalleryList } from './GalleryList'

describe('GalleryList', () => {
  it('renders the hero and three showcase sections', () => {
    render(<GalleryList language="en" />)

    expect(
      screen.getByRole('heading', { name: /Pick a template/ })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: 'Templates' })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: 'Languages' })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: 'Examples' })
    ).toBeInTheDocument()
  })

  it('links cards to category-specific routes', () => {
    render(<GalleryList language="en" />)

    expect(screen.getByRole('link', { name: /Jake/ })).toHaveAttribute(
      'href',
      '/gallery/templates/latex/jake'
    )
    expect(
      screen.getByRole('heading', { name: 'English' }).closest('a')
    ).toHaveAttribute('href', '/gallery/languages/en')
    expect(
      screen.getByRole('link', { name: /Software Engineer/ })
    ).toHaveAttribute('href', '/gallery/examples/software-engineer/en')
  })

  it('renders icon headings with dividers for all showcase sections', () => {
    render(<GalleryList language="en" />)

    for (const title of ['Templates', 'Languages', 'Examples']) {
      const heading = screen.getByRole('heading', { name: title })
      const headingArea = heading.parentElement?.parentElement

      expect(heading.parentElement?.querySelector('svg')).toBeInTheDocument()
      expect(headingArea).toHaveClass('border-b')
    }
  })

  it('places category-specific browse actions after the cards', () => {
    render(<GalleryList language="en" />)

    const actions = [
      ['Browse all templates', '/gallery/templates'],
      ['Browse all languages', '/gallery/languages'],
      ['Browse all examples', '/gallery/examples'],
    ] as const

    for (const [label, href] of actions) {
      const link = screen.getByRole('link', { name: label })
      const section = link.closest('section')
      const cards = section?.querySelectorAll('a.group.flex') ?? []

      expect(link).toHaveAttribute('href', href)
      expect(cards.length).toBeGreaterThan(0)
      expect(
        cards[cards.length - 1].compareDocumentPosition(link) &
          Node.DOCUMENT_POSITION_FOLLOWING
      ).toBeTruthy()
    }
  })

  it('keeps filtering off the curated gallery overview', () => {
    render(<GalleryList language="en" />)

    expect(screen.queryByLabelText('Search resumes...')).not.toBeInTheDocument()
  })
})
