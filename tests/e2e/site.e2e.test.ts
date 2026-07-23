import { execa } from 'execa'
import { existsSync } from 'node:fs'
import { resolve } from 'node:path'
import { describe, expect, it } from 'vitest'
import { fetchBuffer, fetchStatus, fetchText, url } from './helpers'

describe('build and lint', () => {
  it('passes lint and format checks', async () => {
    const result = await execa('pnpm', ['check:ci'], {
      cwd: process.cwd(),
      reject: false,
    })

    expect(result.exitCode).toBe(0)
  }, 60_000)

  it('produces a production build output', () => {
    expect(existsSync(resolve(process.cwd(), '.next'))).toBe(true)
    expect(existsSync(resolve(process.cwd(), '.next/server/search-index.json'))).toBe(true)
  })
})

describe('server and search', () => {
  it('serves the homepage', async () => {
    const status = await fetchStatus(url('/'))
    expect(status).toBe(200)

    const body = await fetchText(url('/'))
    expect(body).toContain('YAMLResume')
  })

  it('exports the search index', async () => {
    const status = await fetchStatus(url('/api/build-search-index'))
    expect(status).toBe(200)
    expect(existsSync(resolve(process.cwd(), '.next/server/search-index.json'))).toBe(true)
  })

  it('returns search results for supported locales', async () => {
    const queries: Array<{ query: string; locale: string }> = [
      { query: 'YAML', locale: 'en' },
      { query: 'markdown', locale: 'en' },
      { query: 'YAML', locale: 'zh-cn' },
      { query: 'YAML', locale: 'ja' },
    ]

    for (const { query, locale } of queries) {
      const res = await fetch(`${url('/api/search')}?query=${encodeURIComponent(query)}&locale=${locale}`)
      expect(res.status).toBe(200)

      const json = (await res.json()) as unknown[]
      expect(json.length, `expected results for query "${query}" (locale ${locale})`).toBeGreaterThan(0)
    }
  })
})

describe('i18n routes', () => {
  const languages = ['es', 'fr', 'id', 'pt', 'ja', 'zh-cn', 'zh-tw']

  it.each(languages)('serves localized homepage for %s', async (lang) => {
    const status = await fetchStatus(url(`/${lang}/`))
    expect(status).toBe(200)

    const body = await fetchText(url(`/${lang}/`))
    expect(body).toContain('YAMLResume')
  })
})

describe('docs', () => {
  it('serves docs index pages', async () => {
    const pages = ['/docs', '/ja/docs', '/zh-cn/docs']

    for (const path of pages) {
      const body = await fetchText(url(path))
      expect(body).toContain('YAMLResume')
    }
  })

  it('serves deep docs pages', async () => {
    const pages: Array<{ path: string; text: string }> = [
      { path: '/docs/guide', text: 'Guide' },
      { path: '/docs/cli', text: 'CLI' },
      { path: '/docs/content/rich-text', text: 'Rich Text' },
      { path: '/ja/docs/installation', text: 'インストール' },
    ]

    for (const { path, text } of pages) {
      const body = await fetchText(url(path))
      expect(body.toLowerCase()).toContain(text.toLowerCase())
    }
  })
})

describe('blog', () => {
  it('serves blog list and posts', async () => {
    const pages: Array<{ path: string; text: string }> = [
      { path: '/blog', text: 'Blog' },
      { path: '/blog/introducing-yamlresume', text: 'Introducing' },
      { path: '/ja/blog/introducing-yamlresume', text: 'YAMLResume' },
    ]

    for (const { path, text } of pages) {
      const body = await fetchText(url(path))
      expect(body.toLowerCase()).toContain(text.toLowerCase())
    }
  })
})

describe('playground', () => {
  it('serves the playground page', async () => {
    const body = await fetchText(url('/playground'))
    expect(body.toLowerCase()).toContain('playground')
  })
})

describe('llm routes', () => {
  it('serves llm text routes', async () => {
    const paths = ['/llms.txt', '/llms-full.txt', '/ja/llms.txt']

    for (const path of paths) {
      const body = await fetchText(url(path))
      expect(body).toContain('YAMLResume')
    }
  })
})

describe('open graph images', () => {
  it('generates PNG OG images for docs and blog', async () => {
    const docsImage = await fetchBuffer(
      url('/api/og/docs/guide/open-graph.png?language=en')
    )
    expect(docsImage.subarray(0, 8).toString('hex')).toBe('89504e470d0a1a0a')

    const blogImage = await fetchBuffer(
      url('/api/og/blog/introducing-yamlresume/open-graph.png?language=en')
    )
    expect(blogImage.subarray(0, 8).toString('hex')).toBe('89504e470d0a1a0a')
  })
})

describe('rewrites', () => {
  it('serves raw MDX source via .mdx URLs', async () => {
    const paths = ['/en/docs.mdx', '/en/docs/guide.mdx']

    for (const path of paths) {
      const body = await fetchText(url(path))
      const hasFrontmatterOrHeading = /^---|^#+ /m.test(body)
      expect(hasFrontmatterOrHeading).toBe(true)
    }
  })
})
