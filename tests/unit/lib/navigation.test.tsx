import type { ReactElement } from 'react'
import { describe, expect, it } from 'vitest'
import { Logo } from '@/components'
import { getNavigationOptions } from '@/lib/navigation'

describe('getNavigationOptions', () => {
  it('returns the expected top-level structure for English', () => {
    const options = getNavigationOptions('en')

    expect(options.nav.url).toBe('/')
    expect(options.themeSwitch).toEqual({ mode: 'light-dark-system' })
    expect(options.githubUrl).toBe('https://github.com/yamlresume/yamlresume')
    expect(options.i18n).toBe(true)
    expect(options.links).toHaveLength(4)
  })

  it('renders the Logo inside the nav title', () => {
    const options = getNavigationOptions('en')

    const title = options.nav.title as ReactElement
    expect(title.type).toBe(Symbol.for('react.fragment'))

    const children = title.props.children as ReactElement[]
    expect(children[0].type).toBe(Logo)
  })

  it('localizes labels for supported languages', () => {
    const en = getNavigationOptions('en')
    const es = getNavigationOptions('es')

    expect(en.links[0].text).toBe('Playground')
    expect(es.links[0].text).toBe('Playground')

    expect(en.links[1].text).toBe('Gallery')
    expect(es.links[1].text).toBe('Galería')

    expect(en.links[2].text).toBe('Documentation')
    expect(es.links[2].text).toBe('Documentación')

    expect(en.links[3].text).toBe('Blog')
    expect(es.links[3].text).toBe('Blog')
  })

  it('generates localized URLs', () => {
    const en = getNavigationOptions('en')
    const es = getNavigationOptions('es')

    expect(en.links[1].url).toBe('/gallery')
    expect(es.links[1].url).toBe('/es/gallery')

    expect(en.links[2].url).toBe('/docs')
    expect(es.links[2].url).toBe('/es/docs')
  })
})
