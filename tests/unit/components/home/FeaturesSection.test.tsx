import { render, screen } from '@testing-library/react'
import { setMockParams } from '@tests/test-utils'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { FeaturesSection } from '@/app/[language]/(home)/components/FeaturesSection'

vi.mock('@/app/[language]/(home)/components/features/TemplatesDemo', () => ({
  TemplatesDemo: () => <div data-testid="templates-demo">Templates Demo</div>,
}))

describe('FeaturesSection', () => {
  beforeEach(() => {
    vi.useFakeTimers()
  })

  afterEach(() => {
    vi.useRealTimers()
  })

  it('renders the section title', () => {
    render(<FeaturesSection />)
    expect(
      screen.getByRole('heading', { name: 'Powerful, Professional & Perfect' })
    ).toBeInTheDocument()
  })

  it('renders all feature cards with translated titles', () => {
    render(<FeaturesSection />)
    const expectedTitles = [
      'Pro-Grade Typesetting',
      'Plain Text in YAML',
      'Developer CLI',
      'Schema Intelligence',
      'Infinite Flexibility',
      'Rich Text Formatting',
      'Go Global',
      'Professional Templates',
      'Multi-Output Support',
    ]
    for (const title of expectedTitles) {
      expect(screen.getByRole('link', { name: title })).toBeInTheDocument()
    }
  })

  it('uses localized documentation links for the current language', () => {
    setMockParams({ language: 'es' })
    render(<FeaturesSection />)
    expect(
      screen.getByRole('link', { name: 'Composición de Nivel Profesional' })
    ).toHaveAttribute('href', '/es/docs/layouts/latex')
    expect(
      screen.getByRole('link', { name: 'Texto Plano en YAML' })
    ).toHaveAttribute('href', '/es/docs/content')
  })
})
