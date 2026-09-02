import { render, screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it } from 'vitest'
import { getGalleryItems } from '@/lib/gallery'
import { GalleryPositionsList } from './GalleryPositionsList'

describe('GalleryPositionsList', () => {
  it('renders the positions heading and resume cards', () => {
    render(<GalleryPositionsList items={getGalleryItems()} language="en" />)

    expect(screen.getAllByRole('heading', { name: 'Positions' })).toHaveLength(
      2
    )
    expect(screen.getByText(/^\d+ resumes$/)).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: /Software Engineer/ })
    ).toHaveAttribute('href', '/gallery/positions/software-engineer/en')
  })

  it('filters positions by search query', async () => {
    const user = userEvent.setup()
    render(<GalleryPositionsList items={getGalleryItems()} language="en" />)

    await user.type(screen.getByLabelText('Search resumes...'), 'designer')

    expect(
      screen.queryByRole('link', { name: /Software Engineer/ })
    ).not.toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: /UX Designer/ })
    ).toBeInTheDocument()
  })

  it('shows an empty state with a working clear button', async () => {
    const user = userEvent.setup()
    render(<GalleryPositionsList items={getGalleryItems()} language="en" />)

    await user.type(screen.getByLabelText('Search resumes...'), 'no-match')

    expect(
      screen.getByText('No resumes match your filters.')
    ).toBeInTheDocument()

    await user.click(screen.getByRole('button', { name: 'Clear filters' }))

    expect(
      screen.queryByText('No resumes match your filters.')
    ).not.toBeInTheDocument()
  })
})
