import { beforeAll, describe, expect, it, vi } from 'vitest'

vi.mock('@/lib', () => {
  const source = { getPages: () => [] }
  const blogSource = {
    getPages: () => [
      {
        url: '/en/blog/1000-stars',
        data: { lastModified: new Date('2025-03-01T00:00:00Z') },
      },
    ],
  }
  const docsSource = {
    getPages: () => [
      // content/docs/index.mdx is a real page whose url normalizes to `/docs`.
      {
        url: '/en/docs',
        data: { lastModified: new Date('2025-07-01T00:00:00Z') },
      },
      {
        url: '/en/docs/cli',
        data: { lastModified: new Date('2025-06-15T00:00:00Z') },
      },
    ],
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

vi.mock('@/lib/contentDates', () => ({
  developerDocsLastModified: new Date('2025-01-05T00:00:00Z'),
  galleryLastModified: new Date('2025-02-10T00:00:00Z'),
}))

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

  it('does not stamp every entry with the build time', async () => {
    const entries = await sitemap()
    const buildTime = Date.now()
    const stampedAtBuild = entries.filter((entry) => {
      const value = entry.lastModified
      if (!value) return false
      return Math.abs(new Date(value).getTime() - buildTime) < 60_000
    })

    expect(stampedAtBuild.map((entry) => entry.url)).toEqual([])
  })

  it('derives index page dates from the content they list', async () => {
    const entries = await sitemap()
    const byUrl = new Map(
      entries.map((entry) => [
        entry.url,
        entry.lastModified ? new Date(entry.lastModified).toISOString() : null,
      ])
    )

    expect(byUrl.get('https://yamlresume.dev/docs')).toBe(
      new Date('2025-07-01T00:00:00Z').toISOString()
    )
    expect(byUrl.get('https://yamlresume.dev/blog')).toBe(
      new Date('2025-03-01T00:00:00Z').toISOString()
    )
  })

  it('gives distinct lastmod values across the sitemap', async () => {
    const entries = await sitemap()
    const values = new Set(
      entries
        .map((entry) =>
          entry.lastModified ? new Date(entry.lastModified).toISOString() : null
        )
        .filter(Boolean)
    )

    expect(values.size).toBeGreaterThan(1)
  })

  it('lists each URL only once', async () => {
    const entries = await sitemap()
    const urls = entries.map((entry) => entry.url)
    const duplicates = urls.filter((url, index) => urls.indexOf(url) !== index)

    expect(duplicates).toEqual([])
  })

  it('lets the docs index keep its own lastModified', async () => {
    const entries = await sitemap()
    const docsEntry = entries.find(
      (entry) => entry.url === 'https://yamlresume.dev/docs'
    )

    expect(docsEntry?.lastModified).toEqual(new Date('2025-07-01T00:00:00Z'))
  })

  it('lists the blog index once per locale', async () => {
    const entries = await sitemap()
    const urls = entries.map((entry) => entry.url)

    expect(urls).toContain('https://yamlresume.dev/blog')
    expect(urls).toContain('https://yamlresume.dev/zh-cn/blog')
    expect(urls).toContain('https://yamlresume.dev/zh-tw/blog')
    expect(
      urls.filter((url) => url === 'https://yamlresume.dev/blog')
    ).toHaveLength(1)
  })
})
