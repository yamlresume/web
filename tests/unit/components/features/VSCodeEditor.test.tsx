import { render, screen, userEvent } from '@tests/test-utils'
import { describe, expect, it, vi } from 'vitest'
import { VSCodeEditor } from '@/app/[language]/(home)/components/features/VSCodeEditor'

describe('VSCodeEditor', () => {
  it('renders file name, code children, and gutter line numbers', () => {
    const { container } = render(
      <VSCodeEditor fileName="resume.yml" loc={5}>
        code content
      </VSCodeEditor>
    )

    expect(screen.getByText('resume.yml')).toBeInTheDocument()
    expect(screen.getByText('code content')).toBeInTheDocument()

    const gutterLines = container.querySelectorAll(
      '[class*="text-right"] > div'
    )
    expect(gutterLines).toHaveLength(5)
  })

  it('renders tabs, highlights the active tab, and fires onClick handlers', async () => {
    const onClickA = vi.fn()
    const onClickB = vi.fn()

    render(
      <VSCodeEditor
        fileName="resume.yml"
        tabs={[
          { id: 'a', label: 'resume.yml', active: true, onClick: onClickA },
          { id: 'b', label: 'resume.pdf', onClick: onClickB },
        ]}
      >
        code content
      </VSCodeEditor>
    )

    const tabA = screen.getByRole('button', { name: 'resume.yml' })
    const tabB = screen.getByRole('button', { name: 'resume.pdf' })

    expect(tabA).toBeInTheDocument()
    expect(tabB).toBeInTheDocument()
    expect(tabA).toHaveClass('bg-neutral-800/50')
    expect(tabB).toHaveClass('text-neutral-500')

    await userEvent.click(tabA)
    expect(onClickA).toHaveBeenCalledOnce()

    await userEvent.click(tabB)
    expect(onClickB).toHaveBeenCalledOnce()
  })

  it('does not render the gutter when showGutter is false', () => {
    const { container } = render(
      <VSCodeEditor fileName="resume.yml" loc={3} showGutter={false}>
        code
      </VSCodeEditor>
    )

    expect(
      container.querySelector('[class*="text-right"]')
    ).not.toBeInTheDocument()
  })

  it('renders overlay content', () => {
    render(
      <VSCodeEditor
        fileName="resume.yml"
        overlay={<div data-testid="editor-overlay">overlay</div>}
      >
        code
      </VSCodeEditor>
    )

    expect(screen.getByTestId('editor-overlay')).toBeInTheDocument()
  })

  it('applies contentClassName to the editor body', () => {
    const { container } = render(
      <VSCodeEditor fileName="resume.yml" contentClassName="custom-body">
        code
      </VSCodeEditor>
    )

    expect(container.querySelector('.custom-body')).toBeInTheDocument()
  })
})
