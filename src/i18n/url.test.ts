import { describe, expect, it } from 'vitest'

import { defaultLanguage, languages } from './config'
import { getLanguageAlternates, getLocalizedUrl } from './url'

describe('getLocalizedUrl', () => {
  it('leaves the default locale unprefixed', () => {
    expect(getLocalizedUrl('/docs', 'en')).toBe('/docs')
  })

  it('prefixes every other locale', () => {
    expect(getLocalizedUrl('/docs', 'zh-cn')).toBe('/zh-cn/docs')
    expect(getLocalizedUrl('/docs', 'zh-tw')).toBe('/zh-tw/docs')
  })

  it('defaults to the default locale', () => {
    expect(getLocalizedUrl('/docs')).toBe('/docs')
  })
})

describe('getLanguageAlternates', () => {
  it('emits one entry per locale plus x-default', () => {
    const alternates = getLanguageAlternates('/docs')

    expect(Object.keys(alternates).sort()).toEqual(
      [...languages, 'x-default'].sort()
    )
  })

  it('points x-default at the default locale URL', () => {
    const alternates = getLanguageAlternates('/docs')

    expect(alternates['x-default']).toBe(
      getLocalizedUrl('/docs', defaultLanguage)
    )
    expect(alternates['x-default']).toBe('/docs')
  })

  it('localizes each locale to its own path', () => {
    const alternates = getLanguageAlternates('/playground')

    expect(alternates.en).toBe('/playground')
    expect(alternates['zh-cn']).toBe('/zh-cn/playground')
    expect(alternates['zh-tw']).toBe('/zh-tw/playground')
  })

  it('keeps the root path free of a trailing slash', () => {
    const alternates = getLanguageAlternates('/')

    expect(alternates.en).toBe('/')
    expect(alternates['x-default']).toBe('/')
    expect(alternates['zh-cn']).toBe('/zh-cn')
  })

  it('handles nested paths', () => {
    const alternates = getLanguageAlternates('/blog/v0.17')

    expect(alternates['zh-tw']).toBe('/zh-tw/blog/v0.17')
  })
})
