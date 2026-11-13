import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { Footer } from '@/app/[language]/(home)/components/Footer'

describe('Footer', () => {
  it('renders copyright text and the PPResume link', () => {
    render(<Footer language="en" />)
    expect(screen.getByText(/© 2023–Present,/i)).toBeInTheDocument()
    expect(screen.getByRole('link', { name: 'PPResume' })).toHaveAttribute(
      'href',
      'https://ppresume.com'
    )
  })

  it('renders language links', () => {
    render(<Footer language="en" />)
    expect(screen.getByRole('link', { name: 'English' })).toHaveAttribute(
      'href',
      '/'
    )
    expect(screen.getByRole('link', { name: 'Español' })).toHaveAttribute(
      'href',
      '/es'
    )
    expect(screen.getByRole('link', { name: 'Français' })).toHaveAttribute(
      'href',
      '/fr'
    )
    expect(screen.getByRole('link', { name: '日本語' })).toHaveAttribute(
      'href',
      '/ja'
    )
    expect(screen.getByRole('link', { name: 'Português' })).toHaveAttribute(
      'href',
      '/pt'
    )
    expect(screen.getByRole('link', { name: '简体中文' })).toHaveAttribute(
      'href',
      '/zh-cn'
    )
    expect(screen.getByRole('link', { name: '繁體中文' })).toHaveAttribute(
      'href',
      '/zh-tw'
    )
  })

  it('keeps gallery unlocalized in localized footers', () => {
    render(<Footer language="es" />)

    expect(screen.getByRole('link', { name: 'Gallery' })).toHaveAttribute(
      'href',
      '/gallery'
    )
    expect(screen.getByRole('link', { name: 'Documentation' })).toHaveAttribute(
      'href',
      '/es/docs'
    )
  })

  it('renders product, developer and community columns', () => {
    render(<Footer language="en" />)

    expect(screen.getByRole('link', { name: 'Documentation' })).toHaveAttribute(
      'href',
      '/docs'
    )
    expect(screen.getByRole('link', { name: 'Gallery' })).toHaveAttribute(
      'href',
      '/gallery'
    )
    expect(screen.getByRole('link', { name: 'Blog' })).toHaveAttribute(
      'href',
      '/blog'
    )

    expect(
      screen.getByRole('link', { name: '@yamlresume/core' })
    ).toHaveAttribute('href', '/developer/core/index.html')

    expect(screen.getByRole('link', { name: 'Chat' })).toHaveAttribute(
      'href',
      'https://discord.gg/9SyT7mVV4K'
    )
    expect(screen.getByRole('link', { name: 'Discussions' })).toHaveAttribute(
      'href',
      'https://github.com/yamlresume/yamlresume/discussions'
    )
  })

  it('keeps developer links unlocalized in localized footers', () => {
    for (const language of ['zh-cn', 'zh-tw'] as const) {
      const { unmount } = render(<Footer language={language} />)

      for (const link of screen.getAllByRole('link', {
        name: /^(@yamlresume\/|CLI$|json2yamlresume$|create-yamlresume$)/,
      })) {
        expect(link.getAttribute('href')).toMatch(/^\/developer\//)
      }

      unmount()
    }
  })
})
