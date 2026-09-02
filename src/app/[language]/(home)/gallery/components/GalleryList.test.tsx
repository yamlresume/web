import { render, screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it } from 'vitest'
import { GalleryList } from './GalleryList'

describe('GalleryList', () => {
  it('renders hero and the three showcase sections', () => {
    render(<GalleryList items={[]} language="en" />)

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

  it('links cards to category-specific detail routes', () => {
    render(<GalleryList items={[]} language="en" />)

    expect(screen.getByText(/^\d+ resumes$/)).toBeInTheDocument()
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

  it('filters positions by search query', async () => {
    const user = userEvent.setup()
    render(<GalleryList items={[]} language="en" />)

    await user.type(screen.getByLabelText('Search resumes...'), 'designer')

    expect(
      screen.queryByRole('link', { name: /Software Engineer/ })
    ).not.toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: /UX Designer/ })
    ).toBeInTheDocument()
  })

  it('shows empty state with a working clear button when nothing matches', async () => {
    const user = userEvent.setup()
    render(<GalleryList items={[]} language="en" />)

    await user.type(screen.getByLabelText('Search resumes...'), 'no-match')

    expect(
      screen.getByText('No resumes match your filters.')
    ).toBeInTheDocument()

    await user.click(screen.getByRole('button', { name: 'Clear filters' }))

    expect(
      screen.queryByText('No resumes match your filters.')
    ).not.toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: /Software Engineer/ })
    ).toBeInTheDocument()
  })
})
