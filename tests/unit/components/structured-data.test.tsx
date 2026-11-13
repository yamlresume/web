import { renderToStaticMarkup } from 'react-dom/server'
import { describe, expect, it } from 'vitest'

import { JsonLd } from '@/components/structured-data'
import {
  buildBlogPostingJsonLd,
  buildDocsBreadcrumbJsonLd,
  buildSiteJsonLd,
} from '@/components/structured-data'

describe('buildSiteJsonLd', () => {
  it('emits Organization, WebSite and SoftwareApplication in one graph', () => {
    const data = buildSiteJsonLd('en')
    const graph = data['@graph'] as Record<string, unknown>[]

    expect(graph.map((node) => node['@type'])).toEqual([
      'Organization',
      'WebSite',
      'SoftwareApplication',
    ])
  })

  it('describes the app as a free developer application', () => {
    const graph = buildSiteJsonLd('en')['@graph'] as Record<string, unknown>[]
    const app = graph.find(
      (node) => node['@type'] === 'SoftwareApplication'
    ) as Record<string, unknown>

    expect(app.applicationCategory).toBe('DeveloperApplication')
    expect(app.offers).toEqual({
      '@type': 'Offer',
      price: '0',
      priceCurrency: 'USD',
    })
  })

  it('localizes the WebSite url and language', () => {
    const graph = buildSiteJsonLd('zh-tw')['@graph'] as Record<string, unknown>[]
    const site = graph.find(
      (node) => node['@type'] === 'WebSite'
    ) as Record<string, unknown>

    expect(site.url).toBe('https://yamlresume.dev/zh-tw')
    expect(site.inLanguage).toBe('zh-tw')
  })

  it('links the WebSite back to the Organization node', () => {
    const graph = buildSiteJsonLd('en')['@graph'] as Record<string, unknown>[]
    const site = graph.find((node) => node['@type'] === 'WebSite')
    const org = graph.find((node) => node['@type'] === 'Organization')

    expect(site?.publisher).toEqual({ '@id': org?.['@id'] })
  })

  it('drops empty sameAs entries', () => {
    const graph = buildSiteJsonLd('en')['@graph'] as Record<string, unknown>[]
    const org = graph.find(
      (node) => node['@type'] === 'Organization'
    ) as Record<string, unknown>

    expect((org.sameAs as string[]).every(Boolean)).toBe(true)
  })
})

describe('buildBlogPostingJsonLd', () => {
  const base = {
    title: 'YAMLResume v0.17',
    description: 'Accent colors and a slimmer image',
    date: '2026-10-17',
    author: 'Xiao Hanyu',
    authorUrl: 'https://x.com/xiaohanyu1988',
    slug: 'v0.17',
    language: 'en' as const,
    image: '/api/og/blog/v0.17/open-graph.png',
  }

  it('uses ISO dates that schema.org accepts', () => {
    const data = buildBlogPostingJsonLd(base)

    expect(data.datePublished).toBe(new Date('2026-10-17').toISOString())
    expect(data.dateModified).toBe(data.datePublished)
  })

  it('keeps dateModified distinct when the post was updated', () => {
    const data = buildBlogPostingJsonLd({
      ...base,
      lastModified: '2026-11-01',
    })

    expect(data.dateModified).toBe(new Date('2026-11-01').toISOString())
    expect(data.dateModified).not.toBe(data.datePublished)
  })

  it('builds an absolute localized url', () => {
    expect(buildBlogPostingJsonLd(base).url).toBe(
      'https://yamlresume.dev/blog/v0.17'
    )
    expect(buildBlogPostingJsonLd({ ...base, language: 'zh-cn' }).url).toBe(
      'https://yamlresume.dev/zh-cn/blog/v0.17'
    )
  })

  it('attaches the author and publisher', () => {
    const data = buildBlogPostingJsonLd(base)

    expect(data.author).toEqual({
      '@type': 'Person',
      name: 'Xiao Hanyu',
      url: 'https://x.com/xiaohanyu1988',
    })
    expect((data.publisher as Record<string, unknown>).name).toBe('YAMLResume')
  })

  it('omits the author url when there is none', () => {
    const data = buildBlogPostingJsonLd({ ...base, authorUrl: undefined })

    expect(data.author).toEqual({ '@type': 'Person', name: 'Xiao Hanyu' })
  })
})

describe('buildDocsBreadcrumbJsonLd', () => {
  it('numbers positions from one', () => {
    const data = buildDocsBreadcrumbJsonLd({
      language: 'en',
      entries: [
        { name: 'Docs', path: '/docs' },
        { name: 'Layouts', path: '/docs/layouts' },
      ],
    })
    const items = data.itemListElement as Record<string, unknown>[]

    expect(items.map((item) => item.position)).toEqual([1, 2])
    expect(items[1].item).toBe('https://yamlresume.dev/docs/layouts')
  })

  it('localizes every crumb', () => {
    const data = buildDocsBreadcrumbJsonLd({
      language: 'zh-cn',
      entries: [
        { name: '文档', path: '/docs' },
        { name: '排版', path: '/docs/layouts' },
      ],
    })
    const items = data.itemListElement as Record<string, unknown>[]

    expect(items[0].item).toBe('https://yamlresume.dev/zh-cn/docs')
    expect(items[1].item).toBe('https://yamlresume.dev/zh-cn/docs/layouts')
  })

})

describe('JsonLd', () => {
  function render(data: Record<string, unknown>): string {
    const html = renderToStaticMarkup(<JsonLd data={data} />)
    return /<script type="application\/ld\+json">([\s\S]*)<\/script>/.exec(html)?.[1] ?? ''
  }

  it('round-trips through JSON.parse', () => {
    const data = { '@type': 'Thing', name: 'Resume & YAML <draft>' }

    expect(JSON.parse(render(data))).toEqual(data)
  })

  it('escapes markup so the payload cannot close the script tag', () => {
    const html = renderToStaticMarkup(
      <JsonLd data={{ name: '</script><img src=x onerror=alert(1)>' }} />
    )

    expect(html).not.toContain('</script><img')
    expect(html.match(/<\/script>/g)).toHaveLength(1)
  })

  it('escapes U+2028 and U+2029', () => {
    const raw = render({ name: 'a\u2028b\u2029c' })

    expect(raw).toContain('\\u2028')
    expect(raw).toContain('\\u2029')
    expect(raw).not.toContain('\u2028')
  })
})
