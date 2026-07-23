import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { StatsCards } from '@/app/[language]/(home)/components/stats/StatsClards'

describe('StatsCards', () => {
  const stats = {
    githubStars: 1234,
    dockerPulls: 5678,
    npmDownloads: 90123,
  }

  it('renders the section title', () => {
    render(<StatsCards {...stats} />)
    expect(
      screen.getByRole('heading', { name: 'Trusted by Developers' })
    ).toBeInTheDocument()
  })

  it('renders all four stat cards with correct values', () => {
    render(<StatsCards {...stats} />)
    expect(screen.getByText('1,234')).toBeInTheDocument()
    expect(screen.getByText('5,678')).toBeInTheDocument()
    expect(screen.getByText('90,123')).toBeInTheDocument()
    expect(screen.getByText('100%')).toBeInTheDocument()

    expect(screen.getByText('GitHub Stars')).toBeInTheDocument()
    expect(screen.getByText('Docker Pulls')).toBeInTheDocument()
    expect(screen.getByText('Total Downloads')).toBeInTheDocument()
    expect(screen.getByText('Test Coverage')).toBeInTheDocument()
  })

  it('links the external stat sources', () => {
    render(<StatsCards {...stats} />)
    expect(
      screen.getByRole('link', { name: 'GitHub Stars (opens in a new tab)' })
    ).toHaveAttribute('href', 'https://github.com/yamlresume/yamlresume')
    expect(
      screen.getByRole('link', { name: 'Docker Pulls (opens in a new tab)' })
    ).toHaveAttribute('href', 'https://hub.docker.com/r/yamlresume/yamlresume')
    expect(
      screen.getByRole('link', { name: 'Total Downloads (opens in a new tab)' })
    ).toHaveAttribute('href', 'https://www.npmjs.com/package/yamlresume')
    expect(
      screen.getByRole('link', { name: 'Test Coverage (opens in a new tab)' })
    ).toHaveAttribute('href', 'https://app.codecov.io/gh/yamlresume/yamlresume')
  })
})
