import userEvent from '@testing-library/user-event'
import { act, render, screen } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'

import { RichTextDemo } from '@/app/[language]/(home)/components/features/RichTextDemo'

describe('RichTextDemo', () => {
  it('renders the source view by default', () => {
    render(<RichTextDemo />)

    expect(
      screen.getByRole('button', { name: 'resume.yml' })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('button', { name: 'resume.pdf' })
    ).toBeInTheDocument()
    expect(screen.getByText('content')).toBeInTheDocument()
    expect(screen.getByText(/This is a sample YAML resume/)).toBeInTheDocument()
  })

  it('switches to the preview view when the preview tab is clicked', async () => {
    render(<RichTextDemo />)

    await userEvent.click(screen.getByRole('button', { name: 'resume.pdf' }))

    expect(
      screen.getByRole('img', {
        name: 'Interactive resume preview with zoom on hover',
      })
    ).toBeInTheDocument()
    expect(screen.getByAltText('Rich Text Preview')).toBeInTheDocument()
  })

  it('updates the zoom origin while hovering over the preview', async () => {
    render(<RichTextDemo />)

    await userEvent.click(screen.getByRole('button', { name: 'resume.pdf' }))

    const preview = screen.getByRole('img', {
      name: 'Interactive resume preview with zoom on hover',
    })

    preview.getBoundingClientRect = vi.fn(() => ({
      x: 0,
      y: 0,
      top: 0,
      left: 0,
      right: 200,
      bottom: 200,
      width: 200,
      height: 200,
      toJSON: () => {},
    }))

    act(() => {
      preview.dispatchEvent(
        new MouseEvent('mousemove', {
          bubbles: true,
          clientX: 100,
          clientY: 50,
        })
      )
    })

    const zoomer = preview.querySelector(
      '[style*="transform-origin"]'
    ) as HTMLElement
    expect(zoomer.style.transformOrigin).toBe('50% 25%')
  })

  it('returns to the source view when the source tab is clicked', async () => {
    render(<RichTextDemo />)

    await userEvent.click(screen.getByRole('button', { name: 'resume.pdf' }))
    expect(
      screen.getByRole('img', {
        name: 'Interactive resume preview with zoom on hover',
      })
    ).toBeInTheDocument()

    await userEvent.click(screen.getByRole('button', { name: 'resume.yml' }))
    expect(screen.getByText('content')).toBeInTheDocument()
  })
})
