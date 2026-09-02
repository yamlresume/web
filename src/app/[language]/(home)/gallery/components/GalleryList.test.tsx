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

    expect(screen.getByRole('link', { name: /Jake/ })).toHaveAttribute(
      'href',
      '/gallery/templates/latex/jake'
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

    const browseLinks = screen.getAllByRole('link', { name: /Browse all/ })
    expect(browseLinks.map((link) => link.getAttribute('href'))).toEqual([
      '/gallery/templates',
      '/gallery/languages',
      '/gallery/positions',
    ])
    expect(screen.queryByLabelText('Search resumes...')).not.toBeInTheDocument()
  })
})
