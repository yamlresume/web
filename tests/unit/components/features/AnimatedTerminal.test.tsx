import { act, render } from '@tests/test-utils'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { AnimatedTerminal } from '@/app/[language]/(home)/components/features/AnimatedTerminal'

const steps = [
  {
    command: 'cmd a',
    output: 'out a',
    delayAfterTyping: 50,
    delayAfterOutput: 50,
  },
  {
    command: 'cmd b',
    output: 'out b',
    delayAfterTyping: 50,
    delayAfterOutput: 50,
  },
]

describe('AnimatedTerminal', () => {
  beforeEach(() => {
    vi.useFakeTimers()
  })

  afterEach(() => {
    vi.useRealTimers()
  })

  function getVisibleLayer(container: HTMLElement) {
    return container.querySelector('[class*="absolute"]') as HTMLElement
  }

  async function tick() {
    await act(async () => {
      vi.runOnlyPendingTimers()
    })
  }

  it('renders the prompt and all ghost steps for layout stability', () => {
    const { container } = render(
      <AnimatedTerminal steps={steps} typingSpeed={10} />
    )

    const ghost = container.querySelector('[class*="invisible"]')
    expect(ghost).toHaveAttribute('aria-hidden', 'true')
    expect(ghost).toHaveTextContent('cmd a')
    expect(ghost).toHaveTextContent('out b')
  })

  it('types out the first command progressively', async () => {
    const { container } = render(
      <AnimatedTerminal steps={steps} typingSpeed={10} />
    )

    await tick()
    expect(getVisibleLayer(container)).toHaveTextContent('c')

    for (let i = 0; i < 4; i++) {
      await tick()
    }
    expect(getVisibleLayer(container)).toHaveTextContent('cmd a')
  })

  it('shows output after typing and advances to the next step', async () => {
    const { container } = render(
      <AnimatedTerminal steps={steps} typingSpeed={10} />
    )

    for (let i = 0; i < 5; i++) {
      await tick()
    }
    await tick()
    expect(getVisibleLayer(container)).toHaveTextContent('out a')

    await tick()
    for (let i = 0; i < 5; i++) {
      await tick()
    }
    expect(getVisibleLayer(container)).toHaveTextContent('cmd b')
  })

  it('loops back to the first step after the last step', async () => {
    const { container } = render(
      <AnimatedTerminal steps={steps} typingSpeed={10} loopDelay={50} />
    )

    for (let i = 0; i < 5; i++) {
      await tick()
    }
    await tick() // delayAfterTyping
    await tick() // delayAfterOutput -> step 1

    for (let i = 0; i < 5; i++) {
      await tick()
    }
    await tick() // delayAfterTyping
    expect(getVisibleLayer(container)).toHaveTextContent('out b')

    await tick() // loopDelay -> reset
    expect(getVisibleLayer(container)).not.toHaveTextContent('out b')
    expect(getVisibleLayer(container)).toHaveTextContent('$')
  })

  it('applies className, contentClassName, and height props', () => {
    const { container } = render(
      <AnimatedTerminal
        steps={steps}
        className="term-class"
        contentClassName="term-content"
        height={180}
      />
    )

    expect(container.firstChild).toHaveClass('term-class')
    expect(container.querySelector('.term-content')).toBeInTheDocument()
    expect(container.querySelector('[style*="height"]')).toHaveStyle({
      height: '180px',
    })
  })
})
