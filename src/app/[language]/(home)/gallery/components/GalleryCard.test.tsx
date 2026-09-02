import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { GalleryBadge } from './GalleryBadge'
import { GalleryCard } from './GalleryCard'

describe('GalleryCard', () => {
  it('renders thumbnail, badges, title, description and footer', () => {
    render(
      <GalleryCard
        href="/gallery/examples/software-engineer/en"
        title="Software Engineer"
        description="A resume for a software engineer"
        thumbnailSrc="/gallery/examples/software-engineer/en/resume.webp"
        thumbnailAlt="Preview of Software Engineer resume"
        badges={
          <>
            <GalleryBadge variant="primary">Engineering</GalleryBadge>
            <GalleryBadge>EN</GalleryBadge>
          </>
        }
        footer={<span>#tech</span>}
      />
    )

    expect(
      screen.getByAltText('Preview of Software Engineer resume')
    ).toHaveAttribute(
      'src',
      '/gallery/examples/software-engineer/en/resume.webp'
    )
    expect(screen.getByText('Engineering')).toBeInTheDocument()
    expect(screen.getByText('EN')).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: 'Software Engineer' })
    ).toBeInTheDocument()
    expect(
      screen.getByText('A resume for a software engineer')
    ).toBeInTheDocument()
    expect(screen.getByText('#tech')).toBeInTheDocument()
  })
})
