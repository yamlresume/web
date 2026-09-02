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
  it('includes localized gallery indexes and detail pages', async () => {
    const entries = await sitemap()
    const urls = entries.map((entry) => entry.url)

    expect(urls).toContain('https://yamlresume.dev/gallery')
    expect(urls).toContain('https://yamlresume.dev/ja/gallery/templates')
    expect(urls).toContain('https://yamlresume.dev/fr/gallery/languages/ja')
    expect(urls).toContain(
      'https://yamlresume.dev/gallery/examples/software-engineer/en'
    )

    const gallery = entries.find(
      (entry) => entry.url === 'https://yamlresume.dev/gallery'
    )
    expect(gallery?.alternates?.languages).toMatchObject({
      en: 'https://yamlresume.dev/gallery',
      ja: 'https://yamlresume.dev/ja/gallery',
    })
  })
})
