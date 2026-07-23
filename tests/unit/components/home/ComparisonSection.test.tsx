import { render, screen } from '@testing-library/react'
import { beforeAll, describe, expect, it, vi } from 'vitest'

import { ComparisonSection } from '@/app/[language]/(home)/components/ComparisonSection'

describe('ComparisonSection', () => {
  beforeAll(() => {
    if (!('registerProperty' in CSS)) {
      Object.defineProperty(global.CSS, 'registerProperty', {
        value: vi.fn(),
        writable: true,
        configurable: true,
      })
    }
  })
  it('renders the section title and labels', () => {
    render(<ComparisonSection />)
    expect(
      screen.getByRole('heading', { name: 'Crafted for Perfection' })
    ).toBeInTheDocument()
    expect(screen.getByText('Conventional')).toBeInTheDocument()
    expect(screen.getByText('YAMLResume')).toBeInTheDocument()
  })

  it('renders the comparison slider with both resume images', () => {
    render(<ComparisonSection />)
    expect(
      screen.getByRole('region', { name: 'Resume comparison slider' })
    ).toBeInTheDocument()
    expect(screen.getByAltText('RxResume PDF')).toBeInTheDocument()
    expect(screen.getByAltText('YAMLResume PDF')).toBeInTheDocument()
  })
})
