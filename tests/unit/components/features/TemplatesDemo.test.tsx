import { act, render, screen } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'

import { TemplatesDemo } from '@/app/[language]/(home)/components/features/TemplatesDemo'

describe('TemplatesDemo', () => {
  it('renders all template slides and starts at the first one', () => {
    render(<TemplatesDemo />)

    const slides = screen.getAllByRole('img')
    expect(slides).toHaveLength(7)
    expect(slides[0].parentElement?.parentElement).toHaveClass('scale-100')
    expect(slides[1].parentElement?.parentElement).toHaveClass('scale-90')
  })

  it('advances to the next slide on the interval', () => {
    vi.useFakeTimers()
    render(<TemplatesDemo />)

    const slides = screen.getAllByRole('img')

    act(() => {
      vi.advanceTimersByTime(4000)
    })

    expect(slides[1].parentElement?.parentElement).toHaveClass('scale-100')
    expect(slides[0].parentElement?.parentElement).toHaveClass('scale-90')

    vi.useRealTimers()
  })

  it('wraps back to the first slide after the last one', () => {
    vi.useFakeTimers()
    render(<TemplatesDemo />)

    const slides = screen.getAllByRole('img')

    act(() => {
      vi.advanceTimersByTime(28000)
    })

    expect(slides[0].parentElement?.parentElement).toHaveClass('scale-100')

    vi.useRealTimers()
  })
})
