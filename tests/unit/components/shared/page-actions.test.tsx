import { render, screen, userEvent, waitFor } from '@tests/test-utils'
import { useState } from 'react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'

import { LLMCopyButton, ViewOptions } from '@/components/ai/page-actions'

class MockClipboardItem {
  constructor(public items: Record<string, unknown>) {}
}

describe('page-actions', () => {
  const githubUrl =
    'https://github.com/yamlresume/yamlresume/blob/main/docs/index.md'
  let writeMock: ReturnType<typeof vi.fn>
  let writeTextMock: ReturnType<typeof vi.fn>

  beforeEach(async () => {
    global.ClipboardItem = MockClipboardItem as unknown as typeof ClipboardItem
    global.fetch = vi.fn().mockResolvedValue({
      ok: true,
      text: () => Promise.resolve('# Sample Markdown'),
    })

    // jsdom lazily installs the real navigator global. Capture it from inside
    // a component event handler so we can spy on the same clipboard instance
    // the components under test will use.
    let jsdomNavigator: Navigator | undefined

    const CaptureNavigator = () => {
      const [done, setDone] = useState(false)
      return (
        <button
          type="button"
          onClick={() => {
            jsdomNavigator = navigator
            setDone(true)
          }}
        >
          {done ? 'Done' : 'Capture'}
        </button>
      )
    }

    const setupUser = userEvent.setup()
    render(<CaptureNavigator />)
    await setupUser.click(screen.getByRole('button', { name: 'Capture' }))

    if (!jsdomNavigator) {
      throw new Error('Failed to capture jsdom navigator')
    }

    writeMock = vi
      .spyOn(jsdomNavigator.clipboard, 'write')
      .mockResolvedValue(undefined)
    writeTextMock = vi
      .spyOn(jsdomNavigator.clipboard, 'writeText')
      .mockResolvedValue(undefined)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('LLMCopyButton', () => {
    it('renders the copy icon and label by default', () => {
      render(<LLMCopyButton markdownUrl="/docs/default.md" />)

      expect(
        screen.getByRole('button', { name: 'Copy Markdown' })
      ).toBeInTheDocument()
    })

    it('copies markdown to the clipboard when clicked', async () => {
      const user = userEvent.setup()
      render(<LLMCopyButton markdownUrl="/docs/copy.md" />)

      const button = screen.getByRole('button', { name: 'Copy Markdown' })
      await user.click(button)

      await waitFor(() => {
        expect(writeMock).toHaveBeenCalledTimes(1)
      })

      const [clipboardItems] = writeMock.mock.calls[0] as [MockClipboardItem[]]
      expect(clipboardItems[0]).toBeInstanceOf(MockClipboardItem)
      expect(clipboardItems[0].items).toHaveProperty('text/plain')
    })

    it('shows a loading spinner while the copy action is in progress', async () => {
      writeMock.mockImplementation(() => new Promise(() => {}))

      const user = userEvent.setup()
      render(<LLMCopyButton markdownUrl="/docs/loading.md" />)

      const button = screen.getByRole('button', { name: 'Copy Markdown' })
      await user.click(button)

      await waitFor(() => {
        expect(button).toBeDisabled()
      })
    })

    it('uses the cached content on subsequent clicks', async () => {
      const user = userEvent.setup()
      render(<LLMCopyButton markdownUrl="/docs/cached.md" />)

      const button = screen.getByRole('button', { name: 'Copy Markdown' })
      await user.click(button)
      await waitFor(() => {
        expect(writeMock).toHaveBeenCalledTimes(1)
      })

      await user.click(button)
      await waitFor(() => {
        expect(writeTextMock).toHaveBeenCalledWith('# Sample Markdown')
      })
    })
  })

  describe('ViewOptions', () => {
    it('renders the popover trigger and item links', () => {
      render(<ViewOptions markdownUrl="/docs/view.md" githubUrl={githubUrl} />)

      expect(screen.getByRole('button', { name: 'Open' })).toBeInTheDocument()
      expect(screen.getByTestId('popover-content')).toBeInTheDocument()

      const githubLink = screen.getByRole('link', { name: /Open in GitHub/i })
      expect(githubLink).toHaveAttribute('href', githubUrl)
      expect(githubLink).toHaveAttribute('target', '_blank')
      expect(githubLink).toHaveAttribute('rel', 'noreferrer noopener')

      const chatGptLink = screen.getByRole('link', { name: /Open in ChatGPT/i })
      expect(chatGptLink).toHaveAttribute(
        'href',
        expect.stringContaining('chatgpt.com')
      )

      const claudeLink = screen.getByRole('link', { name: /Open in Claude/i })
      expect(claudeLink).toHaveAttribute(
        'href',
        expect.stringContaining('claude.ai')
      )
    })
  })
})
