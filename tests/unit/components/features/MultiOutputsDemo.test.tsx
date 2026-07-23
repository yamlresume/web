import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'

import { MultiOutputsDemo } from '@/app/[language]/(home)/components/features/MultiOutputsDemo'

describe('MultiOutputsDemo', () => {
  it('renders the YAML snippet with all rendering engines', () => {
    render(<MultiOutputsDemo />)

    expect(screen.getByText('resume.yml')).toBeInTheDocument()
    expect(screen.getByText('---')).toBeInTheDocument()
    expect(screen.getByText('layouts')).toBeInTheDocument()
  })

  it('renders each engine and its optional template', () => {
    render(<MultiOutputsDemo />)

    expect(screen.getByText('latex')).toBeInTheDocument()
    expect(screen.getByText('markdown')).toBeInTheDocument()
    expect(screen.getByText('html')).toBeInTheDocument()
    expect(screen.getByText('moderncv-banking')).toBeInTheDocument()
    expect(screen.getByText('calm')).toBeInTheDocument()
  })

  it('renders the correct number of gutter line numbers', () => {
    const { container } = render(<MultiOutputsDemo />)

    const lines = container.querySelectorAll('[class*="text-right"] > div')
    expect(lines).toHaveLength(7)
  })
})
