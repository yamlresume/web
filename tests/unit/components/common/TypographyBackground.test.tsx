import { render, screen } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { TypographyBackground } from '@/app/[language]/(home)/components/common/TypographyBackground'

describe('TypographyBackground', () => {
  const originalGetContext = HTMLCanvasElement.prototype.getContext

  beforeEach(() => {
    const fakeContext = {
      clearRect: vi.fn(),
      fillText: vi.fn(),
      strokeRect: vi.fn(),
      fillRect: vi.fn(),
      beginPath: vi.fn(),
      moveTo: vi.fn(),
      lineTo: vi.fn(),
      stroke: vi.fn(),
      closePath: vi.fn(),
      fill: vi.fn(),
      save: vi.fn(),
      restore: vi.fn(),
      translate: vi.fn(),
      rotate: vi.fn(),
      measureText: vi.fn(() => ({ width: 120 })),
    } as unknown as CanvasRenderingContext2D

    HTMLCanvasElement.prototype.getContext = vi.fn((contextId: string) =>
      contextId === '2d'
        ? fakeContext
        : originalGetContext.call(this, contextId)
    ) as typeof originalGetContext
  })

  afterEach(() => {
    HTMLCanvasElement.prototype.getContext = originalGetContext
  })

  it('renders a fixed canvas with the typography background label', () => {
    render(<TypographyBackground />)
    const canvas = screen.getByLabelText('Typography background pattern')
    expect(canvas).toBeInTheDocument()
    expect(canvas.tagName).toBe('CANVAS')
  })
})
