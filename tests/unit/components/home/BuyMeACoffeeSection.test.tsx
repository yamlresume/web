import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { BuyMeACoffeeSection } from '@/app/[language]/(home)/components/BuyMeACoffeeSection'

describe('BuyMeACoffeeSection', () => {
  it('renders the title, description, and support button', () => {
    render(<BuyMeACoffeeSection />)
    expect(
      screen.getByRole('heading', { name: 'Like this project?' })
    ).toBeInTheDocument()
    expect(
      screen.getByText(
        /YAMLResume is a passion project, built to provide free/i
      )
    ).toBeInTheDocument()
    const button = screen.getByRole('link', { name: 'Buy Me a Coffee' })
    expect(button).toHaveAttribute('href', 'https://buymeacoffee.com/xiaohanyu')
    expect(button).toHaveAttribute('target', '_blank')
  })
})
