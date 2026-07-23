import { render, screen, userEvent, waitFor } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { DeveloperDropdown } from '@/components/DeveloperDropdown'

describe('DeveloperDropdown', () => {
  const defaultProps = {
    language: 'en',
    label: 'Developer',
  }

  it('toggles the dropdown open and closed when the button is clicked', async () => {
    const user = userEvent.setup()
    render(<DeveloperDropdown {...defaultProps} />)

    const button = screen.getByRole('button', { name: defaultProps.label })
    expect(screen.queryByRole('link')).not.toBeInTheDocument()

    await user.click(button)
    expect(
      screen.getByRole('link', { name: '@yamlresume/core' })
    ).toBeInTheDocument()

    await user.click(button)
    await waitFor(() => {
      expect(screen.queryByRole('link')).not.toBeInTheDocument()
    })
  })

  it('renders localized item links', async () => {
    const user = userEvent.setup()
    render(<DeveloperDropdown {...defaultProps} />)

    await user.click(screen.getByRole('button', { name: defaultProps.label }))

    const expectedItems = [
      { text: '@yamlresume/core', href: '/en/developer/core/index.html' },
      { text: 'CLI', href: '/en/developer/cli/index.html' },
      {
        text: 'create-yamlresume',
        href: '/en/developer/create-yamlresume/index.html',
      },
      {
        text: 'json2yamlresume',
        href: '/en/developer/json2yamlresume/index.html',
      },
      { text: 'playground', href: '/en/developer/playground/index.html' },
    ]

    for (const { text, href } of expectedItems) {
      const link = screen.getByRole('link', { name: text })
      expect(link).toHaveAttribute('href', href)
    }
  })

  it('closes the dropdown when clicking outside', async () => {
    const user = userEvent.setup()
    render(
      <>
        <DeveloperDropdown {...defaultProps} />
        <button type="button">Outside</button>
      </>
    )

    await user.click(screen.getByRole('button', { name: defaultProps.label }))
    expect(
      screen.getByRole('link', { name: '@yamlresume/core' })
    ).toBeInTheDocument()

    await user.click(screen.getByRole('button', { name: 'Outside' }))
    await waitFor(() => {
      expect(screen.queryByRole('link')).not.toBeInTheDocument()
    })
  })

  it('closes the dropdown when an item is clicked', async () => {
    const user = userEvent.setup()
    render(<DeveloperDropdown {...defaultProps} />)

    await user.click(screen.getByRole('button', { name: defaultProps.label }))
    expect(screen.getByRole('link', { name: 'CLI' })).toBeInTheDocument()

    await user.click(screen.getByRole('link', { name: 'CLI' }))
    await waitFor(() => {
      expect(screen.queryByRole('link')).not.toBeInTheDocument()
    })
  })
})
