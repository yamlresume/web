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
      screen.getByRole('heading', { name: 'Positions' })
    ).toBeInTheDocument()
  })

  it('links cards to category-specific routes', () => {
    render(<GalleryList language="en" />)

    const calmTemplateLink = screen
      .getAllByRole('link', { name: /Calm/ })
      .find(
        (link) => link.getAttribute('href') === '/gallery/templates/html/calm'
      )
    expect(calmTemplateLink).toHaveAttribute(
      'href',
      '/gallery/templates/html/calm'
    )
    expect(
      screen.getByRole('heading', { name: 'English' }).closest('a')
    ).toHaveAttribute('href', '/gallery/languages/en')
    expect(
      screen.getByRole('link', { name: /Software Engineer/ })
    ).toHaveAttribute('href', '/gallery/positions/software-engineer/en')
  })

  it('links the positions showcase to the full catalog', () => {
    render(<GalleryList language="en" />)

    expect(screen.getByRole('link', { name: /Browse all/ })).toHaveAttribute(
      'href',
      '/gallery/positions'
    )
    expect(screen.queryByLabelText('Search resumes...')).not.toBeInTheDocument()
  })
})
