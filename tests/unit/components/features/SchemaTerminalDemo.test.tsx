import { act, render } from '@tests/test-utils'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { SchemaTerminalDemo } from '@/app/[language]/(home)/components/features/SchemaTerminalDemo'

describe('SchemaTerminalDemo', () => {
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
    const { container } = render(<SchemaTerminalDemo />)

    expect(getVisibleLayer(container)).toHaveTextContent('$')
  })

  it('types out the validation command and shows all warnings', async () => {
    const { container } = render(<SchemaTerminalDemo />)

    for (let i = 0; i < 80; i++) {
      await advance(100)
    }

    const visible = getVisibleLayer(container)
    expect(visible).toHaveTextContent('yamlresume validate resume.yml')
    expect(visible).toHaveTextContent('email is invalid.')
    expect(visible).toHaveTextContent('URL is invalid.')
    expect(visible).toHaveTextContent('city should be 2 characters or more.')
    expect(visible).toHaveTextContent('courses should be 2 characters or more.')
    expect(visible).toHaveTextContent('Resume validation failed.')
  })

  it('passes height and className to the terminal', () => {
    const { container } = render(
      <SchemaTerminalDemo height={120} className="schema-demo" />
    )

    expect(container.firstChild).toHaveClass('schema-demo')
    expect(container.querySelector('[style*="height"]')).toHaveStyle({
      height: '120px',
    })
  })
})
