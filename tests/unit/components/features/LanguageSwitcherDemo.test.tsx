import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'

import { LanguageSwitcherDemo } from '@/app/[language]/(home)/components/features/LanguageSwitcherDemo'

describe('LanguageSwitcherDemo', () => {
  it('renders the editor with the YAML locale field', () => {
    render(<LanguageSwitcherDemo />)

    expect(screen.getByText('resume.yml')).toBeInTheDocument()
    expect(screen.getByText('---')).toBeInTheDocument()
    expect(screen.getByText('locale')).toBeInTheDocument()
    expect(screen.getByText('language')).toBeInTheDocument()
  })

  it('renders the autocomplete popup with all language options', () => {
    render(<LanguageSwitcherDemo />)

    const languages = [
      'en',
      'es',
      'fr',
      'nl',
      'no',
      'zh-hans',
      'zh-hant-hk',
      'zh-hant-tw',
    ]

    for (const code of languages) {
      expect(screen.getByText(code)).toBeInTheDocument()
    }
  })

  it('highlights the selected language option', () => {
    render(<LanguageSwitcherDemo />)

    const selected = screen.getByText('zh-hans')
    expect(selected.parentElement).toHaveClass('bg-blue-900')
    expect(selected.parentElement).toHaveClass('text-white')
  })
})
