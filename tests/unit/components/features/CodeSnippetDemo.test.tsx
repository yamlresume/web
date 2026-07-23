import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { CodeSnippetDemo } from '@/app/[language]/(home)/components/features/CodeSnippetDemo'

const code = `commit abc
Author: John
Date: today
+ added
- removed
feat: new`

describe('CodeSnippetDemo', () => {
  it('renders the language header', () => {
    render(<CodeSnippetDemo code={code} language="diff" />)

    expect(screen.getByText('diff')).toBeInTheDocument()
  })

  it('renders each line of code', () => {
    render(<CodeSnippetDemo code={code} language="diff" />)

    expect(screen.getByText('commit abc')).toBeInTheDocument()
    expect(screen.getByText('Author: John')).toBeInTheDocument()
    expect(screen.getByText('+ added')).toBeInTheDocument()
    expect(screen.getByText('- removed')).toBeInTheDocument()
    expect(screen.getByText('feat: new')).toBeInTheDocument()
  })

  it('applies syntax highlighting classes by line type', () => {
    const { container } = render(
      <CodeSnippetDemo code={code} language="diff" />
    )

    const lines = container.querySelectorAll('pre code > div')
    expect(lines).toHaveLength(6)

    expect(lines[0]).toHaveClass('text-amber-500/80')
    expect(lines[1]).toHaveClass('text-fd-foreground/70')
    expect(lines[2]).toHaveClass('text-fd-foreground/70')
    expect(lines[3]).toHaveClass('text-emerald-600/80')
    expect(lines[4]).toHaveClass('text-red-500/80')
    expect(lines[5]).toHaveClass('text-fd-foreground')
  })
})
