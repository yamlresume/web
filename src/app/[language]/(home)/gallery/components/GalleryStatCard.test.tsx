import { IconTemplate } from '@tabler/icons-react'
import { act, fireEvent, render, screen } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { GalleryStatCard } from './GalleryStatCard'

describe('GalleryStatCard', () => {
  beforeEach(() => {
    vi.useFakeTimers()
  })

  afterEach(() => {
    vi.useRealTimers()
  })

  it('matches the onboarding card layout and links the entire card', () => {
    render(
      <GalleryStatCard
        value="24+"
        label="Templates"
        href="/docs/cli#templates"
        command="yamlresume templates list"
        icon={IconTemplate}
      />
    )

    const link = screen.getByRole('link', { name: '24+ Templates' })

    expect(link).toHaveAttribute('href', '/docs/cli#templates')
    expect(screen.getByRole('heading', { name: '24+' })).toBeInTheDocument()
    expect(screen.getByText('Templates')).toBeInTheDocument()
    expect(
      screen.getByRole('button', {
        name: 'Copy yamlresume templates list',
      })
    ).toBeInTheDocument()
  })

  it('copies the command and shows copy feedback', async () => {
    render(
      <GalleryStatCard
        value="24+"
        label="Templates"
        href="/docs/cli#templates"
        command="yamlresume templates list"
        icon={IconTemplate}
      />
    )

    const copyButton = screen.getByRole('button', {
      name: 'Copy yamlresume templates list',
    })

    fireEvent.click(copyButton)
    await act(async () => {
      await Promise.resolve()
    })

    expect(navigator.clipboard.writeText).toHaveBeenCalledWith(
      'yamlresume templates list'
    )
    expect(copyButton.querySelector('svg')).toHaveClass('text-green-500')

    act(() => vi.advanceTimersByTime(2000))
    expect(copyButton.querySelector('svg')).toHaveClass(
      'text-fd-muted-foreground'
    )
  })
})
