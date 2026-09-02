import { render, screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it } from 'vitest'
import { getGalleryItems } from '@/lib/gallery'
import { makeGalleryItem } from './fixtures'
import { GalleryExamplesList } from './GalleryExamplesList'

describe('GalleryExamplesList', () => {
  it('renders the examples heading and resume cards', () => {
    render(<GalleryExamplesList items={getGalleryItems()} language="en" />)

    expect(screen.getAllByRole('heading', { name: 'Examples' })).toHaveLength(2)
    expect(screen.getByText(/^5 resumes$/)).toBeInTheDocument()
    expect(
      screen.getAllByRole('link', { name: /Software Engineer/ })
    ).toHaveLength(1)
    expect(
      screen.getByRole('link', { name: /Software Engineer/ })
    ).toHaveAttribute('href', '/gallery/examples/software-engineer/en')
  })

  it('uses the selected language without duplicating examples', () => {
    render(
      <GalleryExamplesList
        items={getGalleryItems()}
        language="en"
        initialFilters={{
          search: '',
          category: '',
          tag: '',
          language: 'ja',
        }}
      />
    )

    expect(screen.getByText(/^5 resumes$/)).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: /ソフトウェアエンジニア/ })
    ).toHaveAttribute('href', '/gallery/examples/software-engineer/ja')
    expect(
      screen.queryByRole('link', { name: /Software Engineer/ })
    ).not.toBeInTheDocument()
  })

  it('paginates unique examples with crawlable links', async () => {
    const user = userEvent.setup()
    const items = Array.from({ length: 25 }, (_, index) =>
      makeGalleryItem({
        id: `example-${index + 1}`,
        title: `Example ${String(index + 1).padStart(2, '0')}`,
      })
    )
    render(<GalleryExamplesList items={items} language="en" />)

    expect(screen.getAllByRole('link', { name: /Example \d+/ })).toHaveLength(
      24
    )
    const nextPage = screen.getByRole('link', { name: 'Next page' })
    expect(nextPage).toHaveAttribute('href', '/gallery/examples?page=2')

    await user.click(nextPage)

    expect(window.location.search).toBe('?page=2')
    expect(screen.getByRole('link', { name: /Example 25/ })).toBeInTheDocument()
  })

  it('loads filters from props and persists them in the URL', () => {
    window.history.replaceState(null, '', '/gallery/examples')
    render(
      <GalleryExamplesList
        items={getGalleryItems()}
        language="en"
        initialFilters={{
          search: 'designer',
          category: '',
          tag: '',
          language: 'en',
        }}
      />
    )

    expect(screen.getByLabelText('Search resumes...')).toHaveValue('designer')
    expect(window.location.search).toBe('?search=designer&language=en')
    expect(
      screen.queryByRole('link', { name: /Software Engineer/ })
    ).not.toBeInTheDocument()
  })

  it('filters examples by search query', async () => {
    const user = userEvent.setup()
    render(<GalleryExamplesList items={getGalleryItems()} language="en" />)

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
    render(<GalleryExamplesList items={getGalleryItems()} language="en" />)

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
