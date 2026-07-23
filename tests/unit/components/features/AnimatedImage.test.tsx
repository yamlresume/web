import { render, screen } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'

import { AnimatedImage } from '@/app/[language]/(home)/components/features/AnimatedImage'

vi.mock(
  '@/app/[language]/(home)/components/features/AnimatedImage.module.css',
  () => ({
    default: { animateResume: 'animate-resume-mock' },
  })
)

describe('AnimatedImage', () => {
  it('renders the image with the provided src and alt', () => {
    render(
      <AnimatedImage
        src="/static/resume.png"
        alt="Resume Preview"
        height="h-64"
      />
    )

    const image = screen.getByAltText('Resume Preview')
    expect(image).toBeInTheDocument()
    expect(image).toHaveAttribute('src', '/static/resume.png')
  })

  it('applies the default height and width when props are omitted', () => {
    render(<AnimatedImage src="/static/resume.png" alt="Resume Preview" />)

    const image = screen.getByAltText('Resume Preview')
    expect(image).toHaveAttribute('width', '800')
    expect(image).toHaveAttribute('height', '1200')
  })

  it('applies custom height, width, and imgHeight props', () => {
    render(
      <AnimatedImage
        src="/static/resume.png"
        alt="Resume Preview"
        height="h-96"
        width={600}
        imgHeight={900}
      />
    )

    const image = screen.getByAltText('Resume Preview')
    expect(image).toHaveAttribute('width', '600')
    expect(image).toHaveAttribute('height', '900')
  })

  it('renders with priority loading without errors', () => {
    render(
      <AnimatedImage src="/static/resume.png" alt="Resume Preview" priority />
    )

    expect(screen.getByAltText('Resume Preview')).toBeInTheDocument()
  })
})
