import { render, screen, waitFor } from '@tests/test-utils'
import MermaidModule from 'mermaid'
import { afterEach, describe, expect, it, vi } from 'vitest'
import { Mermaid } from '@/components/mdx/mermaid'

describe('Mermaid', () => {
  afterEach(() => {
    vi.restoreAllMocks()
  })

  it('renders the mocked SVG after the chart is rendered', async () => {
    render(<Mermaid chart="graph TD; A-->B" />)

    await waitFor(() => {
      expect(screen.getByTestId('mermaid-svg')).toBeInTheDocument()
    })

    expect(screen.getByText('Diagram')).toBeInTheDocument()
  })

  it('does not re-render when the chart prop stays the same', async () => {
    const renderSpy = vi.spyOn(MermaidModule, 'render')
    const { rerender } = render(<Mermaid chart="graph TD; A-->B" />)

    await waitFor(() => {
      expect(screen.getByTestId('mermaid-svg')).toBeInTheDocument()
    })

    const callCountAfterInitialRender = renderSpy.mock.calls.length
    rerender(<Mermaid chart="graph TD; A-->B" />)
    expect(renderSpy.mock.calls.length).toBe(callCountAfterInitialRender)
  })

  it('logs an error when mermaid rendering fails', async () => {
    const error = new Error('mermaid failed')
    vi.spyOn(MermaidModule, 'render').mockRejectedValue(error)
    const consoleSpy = vi.spyOn(console, 'error').mockImplementation(() => {})

    render(<Mermaid chart="graph TD; A-->C" />)

    await waitFor(() => {
      expect(consoleSpy).toHaveBeenCalledWith(
        'Error while rendering mermaid',
        error
      )
    })

    consoleSpy.mockRestore()
  })
})
