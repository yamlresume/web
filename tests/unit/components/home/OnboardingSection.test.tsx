import { act, fireEvent, render, screen } from '@testing-library/react'
import { setMockParams } from '@tests/test-utils'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { OnboardingSection } from '@/app/[language]/(home)/components/OnboardingSection'

describe('OnboardingSection', () => {
  beforeEach(() => {
    vi.useFakeTimers()
  })

  afterEach(() => {
    vi.useRealTimers()
  })

  const methods = [
    {
      title: 'NPX (Recommended)',
      command: 'npx create-yamlresume',
      href: '/docs/ecosystem/create-yamlresume',
    },
    {
      title: 'GitHub Action',
      command: '- uses: yamlresume/action@v0.2.3',
      href: '/docs/ecosystem/action',
    },
    {
      title: 'NPM Global',
      command: 'npm install -g yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      title: 'Homebrew',
      command: 'brew install yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      title: 'Docker',
      command:
        'docker run --rm -v $(pwd):/home/yamlresume yamlresume/yamlresume new',
      href: '/docs/installation#docker-users',
    },
    {
      title: 'json2yamlresume',
      command: 'npx json2yamlresume input.json output.yaml',
      href: '/docs/ecosystem/json2yamlresume',
    },
  ]

  it('renders the section title and all install methods', () => {
    render(<OnboardingSection />)
    expect(
      screen.getByRole('heading', { name: 'Get Started in Seconds' })
    ).toBeInTheDocument()
    for (const method of methods) {
      expect(
        screen.getByRole('heading', { name: method.title })
      ).toBeInTheDocument()
      expect(document.body.textContent).toContain(method.command)
    }
  })

  it('renders localized documentation links', () => {
    setMockParams({ language: 'fr' })
    render(<OnboardingSection />)
    expect(
      screen.getByRole('link', { name: 'NPX (Recommandé)' })
    ).toHaveAttribute('href', '/fr/docs/ecosystem/create-yamlresume')
    expect(screen.getByRole('link', { name: 'Homebrew' })).toHaveAttribute(
      'href',
      '/fr/docs/installation#yamlresume-cli'
    )
  })

  it('toggles the copy icon after clicking a copy button', async () => {
    render(<OnboardingSection />)

    const copyButtons = screen.getAllByRole('button', { name: 'Copy command' })
    expect(copyButtons).toHaveLength(methods.length)

    const first = copyButtons[0]
    expect(first.querySelector('svg')).toHaveClass('text-fd-muted-foreground')

    fireEvent.click(first)
    await act(async () => {
      await Promise.resolve()
    })
    expect(first.querySelector('svg')).toHaveClass('text-green-500')

    act(() => vi.advanceTimersByTime(2000))
    expect(first.querySelector('svg')).toHaveClass('text-fd-muted-foreground')
  })
})
