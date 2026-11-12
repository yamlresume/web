import { beforeAll, describe, expect, it, vi } from 'vitest'

vi.mock('@/lib', () => {
  const source = { getPages: () => [] }
  return {
    blogSource: source,
    blogSourceEs: source,
    blogSourceFr: source,
    blogSourceId: source,
    blogSourceJa: source,
    blogSourcePt: source,
    blogSourceZhCN: source,
    blogSourceZhTW: source,
    docsSource: source,
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
})
