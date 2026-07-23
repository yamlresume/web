import { render, screen } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'

import { AnimatedResumeDemo } from '@/app/[language]/(home)/components/features/AnimatedResumeDemo'

vi.mock(
  '@/app/[language]/(home)/components/features/AnimatedImage.module.css',
  () => ({
    default: { animateResume: 'animate-resume-mock' },
  })
)

describe('AnimatedResumeDemo', () => {
  it('renders the animated resume preview image', () => {
    render(<AnimatedResumeDemo />)

    const image = screen.getByAltText('Resume Preview')
    expect(image).toBeInTheDocument()
    expect(image).toHaveAttribute(
      'src',
      '/static/images/docs/layouts/latex/templates/moderncv-banking-template.png'
    )
  })
})
