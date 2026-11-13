import { beforeAll, describe, expect, it, vi } from 'vitest'

vi.mock('@/lib', () => {
  const source = { getPages: () => [] }
  const blogSource = {
    getPages: () => [{ url: '/en/blog/1000-stars', data: {} }],
  }
  const docsSource = {
    getPages: () => [{ url: '/en/docs/cli', data: {} }],
  }
  return {
    blogSource,
    blogSourceEs: source,
    blogSourceFr: source,
    blogSourceId: source,
    blogSourceJa: source,
    blogSourcePt: source,
    blogSourceZhCN: source,
    blogSourceZhTW: source,
    docsSource,
    docsSourceEs: source,
    docsSourceFr: source,
    docsSourceId: source,
    docsSourceJa: source,
    docsSourcePt: source,
    docsSourceZhCN: source,
    docsSourceZhTW: source,
  }
})

let sitemap: typeof import('./sitemap').default

beforeAll(async () => {
  sitemap = (await import('./sitemap')).default
})

describe('sitemap', () => {
  it('includes each gallery page once without UI locale alternates', async () => {
    const entries = await sitemap()
    const urls = entries.map((entry) => entry.url)

    expect(urls).toContain('https://yamlresume.dev/gallery')
    expect(urls).toContain(
      'https://yamlresume.dev/gallery/examples/software-engineer/es'
    )
    expect(urls).not.toContain('https://yamlresume.dev/ja/gallery/templates')
    expect(urls).not.toContain('https://yamlresume.dev/fr/gallery/languages/ja')

    const galleryEntries = entries.filter((entry) =>
      new URL(entry.url).pathname.startsWith('/gallery')
    )
    const galleryUrls = galleryEntries.map((entry) => entry.url)

    expect(new Set(galleryUrls).size).toBe(galleryUrls.length)
    for (const entry of galleryEntries) {
      expect(entry.alternates?.languages).toBeUndefined()
    }
  })

  it('uses public default-locale URLs for docs and blog pages', async () => {
    const entries = await sitemap()
    const urls = entries.map((entry) => entry.url)

    expect(urls).toContain('https://yamlresume.dev/docs/cli')
    expect(urls).toContain('https://yamlresume.dev/blog/1000-stars')
    expect(urls).not.toContain('https://yamlresume.dev/en/docs/cli')
    expect(urls).not.toContain('https://yamlresume.dev/en/blog/1000-stars')
  })
})
