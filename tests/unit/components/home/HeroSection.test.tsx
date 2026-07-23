import { render, screen } from '@testing-library/react'
import { setMockParams, userEvent } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { HeroSection } from '@/app/[language]/(home)/components/HeroSection'

describe('HeroSection', () => {
  it('renders the translated hero content', () => {
    render(<HeroSection />)
    expect(
      screen.getByRole('heading', { name: 'Resumes as Code in YAML' })
    ).toBeInTheDocument()
    expect(
      screen.getByText(/YAMLResume allows people to create/i)
    ).toBeInTheDocument()
    expect(screen.getByText('Brought to you with ❤️ by')).toBeInTheDocument()
    expect(screen.getByRole('link', { name: 'PPResume' })).toHaveAttribute(
      'href',
      'https://ppresume.com'
    )
  })

  it('renders playground and quick-start links for the default language', () => {
    render(<HeroSection />)
    expect(screen.getByRole('link', { name: 'Playground' })).toHaveAttribute(
      'href',
      '/playground'
    )
    expect(screen.getByRole('link', { name: 'Quick Start' })).toHaveAttribute(
      'href',
      '/docs'
    )
  })

  it('falls back to the default language when no language param is set', () => {
    setMockParams({})
    render(<HeroSection />)
    expect(screen.getByRole('link', { name: 'Playground' })).toHaveAttribute(
      'href',
      '/playground'
    )
    expect(screen.getByRole('link', { name: 'Quick Start' })).toHaveAttribute(
      'href',
      '/docs'
    )
  })

  it('localizes links based on the current language', () => {
    setMockParams({ language: 'es' })
    render(<HeroSection />)
    expect(screen.getByRole('link', { name: 'Playground' })).toHaveAttribute(
      'href',
      '/es/playground'
    )
    expect(screen.getByRole('link', { name: 'Inicio Rápido' })).toHaveAttribute(
      'href',
      '/es/docs'
    )
  })

  it('applies a hover effect to the playground preview', async () => {
    const { container } = render(<HeroSection />)
    const playgroundLink = screen.getByRole('link', { name: 'Playground' })
    const previewWrapper = container.querySelector('.rounded-xl')
      ?.parentElement as HTMLElement

    expect(previewWrapper).not.toHaveClass('scale-[1.01]')
    await userEvent.hover(playgroundLink)
    expect(previewWrapper).toHaveClass('scale-[1.01]')
    await userEvent.unhover(playgroundLink)
    expect(previewWrapper).not.toHaveClass('scale-[1.01]')
  })
})
