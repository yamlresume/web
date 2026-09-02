import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { GalleryHero } from './GalleryHero'

describe('GalleryHero', () => {
  it('renders linked stat cards with their CLI commands', () => {
    render(
      <GalleryHero
        templateCount={8}
        languageCount={12}
        positionCount={5}
        language="en"
      />
    )

    expect(
      screen.getByRole('heading', { name: /Pick a template/ })
    ).toBeInTheDocument()
    expect(screen.getByRole('link', { name: /8\+/ })).toHaveAttribute(
      'href',
      '/docs/cli#templates'
    )
    expect(screen.getByRole('link', { name: /12\+/ })).toHaveAttribute(
      'href',
      '/docs/locale'
    )
    expect(screen.getByRole('link', { name: /5\+/ })).toHaveAttribute(
      'href',
      '/docs/ecosystem/samples'
    )
    expect(
      screen.getByRole('button', {
        name: 'Copy yamlresume templates list',
      })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('button', {
        name: 'Copy yamlresume languages list',
      })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('button', {
        name: 'Copy yamlresume samples list',
      })
    ).toBeInTheDocument()
  })

  it('localizes documentation destinations', () => {
    render(
      <GalleryHero
        templateCount={8}
        languageCount={12}
        positionCount={5}
        language="fr"
      />
    )

    expect(screen.getByRole('link', { name: /8\+/ })).toHaveAttribute(
      'href',
      '/fr/docs/cli#templates'
    )
    expect(screen.getByRole('link', { name: /12\+/ })).toHaveAttribute(
      'href',
      '/fr/docs/locale'
    )
    expect(screen.getByRole('link', { name: /5\+/ })).toHaveAttribute(
      'href',
      '/fr/docs/ecosystem/samples'
    )
  })
})
