import { act, render } from '@tests/test-utils'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { CliTerminalDemo } from '@/app/[language]/(home)/components/features/CliTerminalDemo'

describe('CliTerminalDemo', () => {
  beforeEach(() => {
    vi.useFakeTimers()
  })

  afterEach(() => {
    vi.useRealTimers()
  })

  function getVisibleLayer(container: HTMLElement) {
    return container.querySelector('[class*="absolute"]') as HTMLElement
  }

  async function advance(ms: number) {
    await act(async () => {
      vi.advanceTimersByTime(ms)
    })
  }

  it('renders the terminal prompt', () => {
    const { container } = render(<CliTerminalDemo />)

    expect(getVisibleLayer(container)).toHaveTextContent('$')
  })

  it('types out all CLI commands and displays their outputs', async () => {
    const { container } = render(<CliTerminalDemo />)

    for (let i = 0; i < 180; i++) {
      await advance(100)
    }

    const visible = getVisibleLayer(container)
    expect(visible).toHaveTextContent('yamlresume new resume.yml')
    expect(visible).toHaveTextContent('Created resume.yml successfully.')

    expect(visible).toHaveTextContent('yamlresume build resume.yml')
    expect(visible).toHaveTextContent(
      'Generated resume pdf file successfully: resume.pdf'
    )

    expect(visible).toHaveTextContent('yamlresume dev resume.yml')
    expect(visible).toHaveTextContent('Watching file changes: my-resume.yml...')
  })

  it('passes height and className to the terminal', () => {
    const { container } = render(
      <CliTerminalDemo height={150} className="cli-demo" />
    )

    expect(container.firstChild).toHaveClass('cli-demo')
    expect(container.querySelector('[style*="height"]')).toHaveStyle({
      height: '150px',
    })
  })
})
