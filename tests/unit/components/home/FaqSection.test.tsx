import { render, screen } from '@testing-library/react'
import { userEvent } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { FaqSection } from '@/app/[language]/(home)/components/FaqSection'

describe('FaqSection', () => {
  const questions = [
    'What is YAMLResume?',
    'Why YAML over JSON?',
    'How does YAMLResume generate PDFs?',
    'Why use LaTeX?',
  ]

  it('renders the section title and all questions', () => {
    render(<FaqSection />)
    expect(
      screen.getByRole('heading', { name: 'Frequently Asked Questions' })
    ).toBeInTheDocument()
    for (const question of questions) {
      expect(screen.getByRole('button', { name: question })).toBeInTheDocument()
    }
  })

  it('expands a panel when its question is clicked', async () => {
    render(<FaqSection />)
    const button = screen.getByRole('button', { name: 'What is YAMLResume?' })
    const panel = button.nextElementSibling as HTMLElement

    expect(button).toHaveAttribute('aria-expanded', 'false')
    expect(panel).toHaveClass('max-h-0')

    await userEvent.click(button)

    expect(button).toHaveAttribute('aria-expanded', 'true')
    expect(panel).toHaveClass('max-h-96')
  })

  it('collapses an already open panel when clicked again', async () => {
    render(<FaqSection />)
    const button = screen.getByRole('button', { name: 'Why YAML over JSON?' })
    const panel = button.nextElementSibling as HTMLElement

    await userEvent.click(button)
    expect(panel).toHaveClass('max-h-96')

    await userEvent.click(button)
    expect(button).toHaveAttribute('aria-expanded', 'false')
    expect(panel).toHaveClass('max-h-0')
  })

  it('only keeps one panel open at a time', async () => {
    render(<FaqSection />)
    const first = screen.getByRole('button', { name: 'What is YAMLResume?' })
    const second = screen.getByRole('button', { name: 'Why use LaTeX?' })

    await userEvent.click(first)
    expect(first).toHaveAttribute('aria-expanded', 'true')

    await userEvent.click(second)
    expect(first).toHaveAttribute('aria-expanded', 'false')
    expect(second).toHaveAttribute('aria-expanded', 'true')
  })
})
