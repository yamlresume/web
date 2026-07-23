import { act, render, screen } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'

import { InfiniteFlexibilityDemo } from '@/app/[language]/(home)/components/features/InfiniteFlexibilityDemo'

function getProjectItem() {
  return screen.getByText('Projects')
}

describe('InfiniteFlexibilityDemo', () => {
  it('renders all section labels in their initial order', () => {
    render(<InfiniteFlexibilityDemo />)

    expect(screen.getByText('Experience')).toBeInTheDocument()
    expect(screen.getByText('Education')).toBeInTheDocument()
    expect(getProjectItem()).toBeInTheDocument()
    expect(screen.getByText('Skills')).toBeInTheDocument()
    expect(screen.getByText('Awards')).toBeInTheDocument()
  })

  it('animates reordering and renaming of the Projects section', () => {
    vi.useFakeTimers()
    render(<InfiniteFlexibilityDemo />)

    const projectItem = getProjectItem()
    expect(projectItem.parentElement?.parentElement).toHaveStyle({
      top: '72px',
    })

    act(() => {
      vi.advanceTimersByTime(3000)
    })

    expect(projectItem.parentElement?.parentElement).toHaveStyle({
      top: '0px',
    })

    act(() => {
      vi.advanceTimersByTime(3000)
    })

    act(() => {
      vi.advanceTimersByTime(1000)
    })

    expect(screen.getByText('Portfolio')).toBeInTheDocument()

    act(() => {
      vi.advanceTimersByTime(3000)
    })

    expect(screen.getByText('Portfolio')).toBeInTheDocument()
    expect(projectItem.parentElement?.parentElement).toHaveStyle({
      top: '0px',
    })

    vi.useRealTimers()
  })

  it('cycles back to the initial state after completing all steps', () => {
    vi.useFakeTimers()
    render(<InfiniteFlexibilityDemo />)

    act(() => {
      vi.advanceTimersByTime(12000)
    })

    expect(screen.getByText('Projects')).toBeInTheDocument()
    expect(getProjectItem().parentElement?.parentElement).toHaveStyle({
      top: '72px',
    })

    vi.useRealTimers()
  })
})
