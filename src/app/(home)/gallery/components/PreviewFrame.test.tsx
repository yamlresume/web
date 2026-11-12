import { render, screen, waitFor } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { getGalleryDetailMessages } from '@/i18n'
import { PreviewFrame } from './PreviewFrame'

const requestFullscreenDescriptor = Object.getOwnPropertyDescriptor(
  Element.prototype,
  'requestFullscreen'
)
const fullscreenEnabledDescriptor = Object.getOwnPropertyDescriptor(
  document,
  'fullscreenEnabled'
)
const fullscreenElementDescriptor = Object.getOwnPropertyDescriptor(
  document,
  'fullscreenElement'
)
const exitFullscreenDescriptor = Object.getOwnPropertyDescriptor(
  document,
  'exitFullscreen'
)

function restoreProperty(
  target: object,
  property: string,
  descriptor?: PropertyDescriptor
) {
  if (descriptor) {
    Object.defineProperty(target, property, descriptor)
  } else {
    Reflect.deleteProperty(target, property)
  }
}

describe('PreviewFrame', () => {
  let fullscreenElement: Element | null
  const requestFullscreen = vi.fn(async function (this: Element) {
    fullscreenElement = this
    document.dispatchEvent(new Event('fullscreenchange'))
  })
  const exitFullscreen = vi.fn(async () => {
    fullscreenElement = null
    document.dispatchEvent(new Event('fullscreenchange'))
  })

  beforeEach(() => {
    fullscreenElement = null
    requestFullscreen.mockClear()
    exitFullscreen.mockClear()
  })

  afterEach(() => {
    restoreProperty(
      Element.prototype,
      'requestFullscreen',
      requestFullscreenDescriptor
    )
    restoreProperty(document, 'fullscreenEnabled', fullscreenEnabledDescriptor)
    restoreProperty(document, 'fullscreenElement', fullscreenElementDescriptor)
    restoreProperty(document, 'exitFullscreen', exitFullscreenDescriptor)
  })

  it('links directly to the preview and disables unsupported fullscreen', () => {
    const messages = getGalleryDetailMessages('en')
    render(
      <PreviewFrame
        preview={{ type: 'image', src: '/resume.webp' }}
        imageAlt="Resume preview"
        messages={messages.actions}
      />
    )

    expect(
      screen.getByRole('link', { name: messages.actions.openInNewTab })
    ).toHaveAttribute('href', '/resume.webp')
    expect(
      screen.getByRole('button', { name: messages.actions.fullscreen })
    ).toBeDisabled()
  })

  it('enters and exits fullscreen when the browser supports it', async () => {
    const user = userEvent.setup()
    const messages = getGalleryDetailMessages('en')
    Object.defineProperty(Element.prototype, 'requestFullscreen', {
      configurable: true,
      value: requestFullscreen,
    })
    Object.defineProperty(document, 'fullscreenEnabled', {
      configurable: true,
      value: true,
    })
    Object.defineProperty(document, 'fullscreenElement', {
      configurable: true,
      get: () => fullscreenElement,
    })
    Object.defineProperty(document, 'exitFullscreen', {
      configurable: true,
      value: exitFullscreen,
    })

    render(
      <PreviewFrame
        preview={{ type: 'image', src: '/resume.webp' }}
        imageAlt="Resume preview"
        messages={messages.actions}
      />
    )

    const enterButton = screen.getByRole('button', {
      name: messages.actions.fullscreen,
    })
    await waitFor(() => expect(enterButton).toBeEnabled())
    await user.click(enterButton)

    expect(requestFullscreen).toHaveBeenCalledOnce()
    const exitButton = await screen.findByRole('button', {
      name: messages.actions.exitFullscreen,
    })
    await user.click(exitButton)

    expect(exitFullscreen).toHaveBeenCalledOnce()
    expect(
      await screen.findByRole('button', { name: messages.actions.fullscreen })
    ).toBeEnabled()
  })
})
