import { siteConfig } from '@/config/site'
import { getLocalizedUrl, type Language } from '@/i18n'

/**
 * Resolve a path against the site origin.
 *
 * A trailing slash is dropped so `/zh-tw/` matches the canonical form the
 * metadata emits (`/zh-tw`); the bare origin keeps its slash.
 */
export function absoluteUrl(path: string): string {
  const url = new URL(path, siteConfig.url).toString()

  return url === `${siteConfig.url}/` ? url : url.replace(/\/$/, '')
}

/**
 * Serialize JSON-LD for a `<script>` tag.
 *
 * React escapes `</script` in text children already, so this is defense in
 * depth rather than the active protection. It matters if this ever renders
 * through `dangerouslySetInnerHTML`. `\u2028`/`\u2029` are escaped because
 * they are valid in JSON but break consumers that `eval` the payload.
 */
export function JsonLd({ data }: { data: Record<string, unknown> }) {
  const json = JSON.stringify(data)
    .replace(/</g, '\\u003c')
    .replace(/\u2028/g, '\\u2028')
    .replace(/\u2029/g, '\\u2029')

  return <script type="application/ld+json">{json}</script>
}

export function buildSiteJsonLd(language: Language): Record<string, unknown> {
  const organizationId = `${siteConfig.url}/#organization`
  const websiteId = `${siteConfig.url}/#website`

  return {
    '@context': 'https://schema.org',
    '@graph': [
      {
        '@type': 'Organization',
        '@id': organizationId,
        name: siteConfig.name,
        url: siteConfig.url,
        logo: siteConfig.ogImage,
        sameAs: [
          'https://github.com/yamlresume/yamlresume',
          'https://discord.gg/9SyT7mVV4K',
          siteConfig.creator.twitter
            ? `https://x.com/${siteConfig.creator.twitter.replace('@', '')}`
            : undefined,
        ].filter(Boolean),
      },
      {
        '@type': 'WebSite',
        '@id': websiteId,
        name: siteConfig.name,
        url: absoluteUrl(getLocalizedUrl('/', language)),
        description: siteConfig.description,
        inLanguage: language,
        publisher: { '@id': organizationId },
      },
      {
        '@type': 'SoftwareApplication',
        name: siteConfig.name,
        applicationCategory: 'DeveloperApplication',
        operatingSystem: 'macOS, Linux, Windows',
        description: siteConfig.description,
        url: siteConfig.url,
        offers: {
          '@type': 'Offer',
          price: '0',
          priceCurrency: 'USD',
        },
        publisher: { '@id': organizationId },
      },
    ],
  }
}

export function buildBlogPostingJsonLd({
  title,
  description,
  date,
  lastModified,
  author,
  authorUrl,
  slug,
  language,
  image,
}: {
  title: string
  description?: string
  date: string | Date
  lastModified?: string | Date
  author: string
  authorUrl?: string
  slug: string
  language: Language
  image: string
}): Record<string, unknown> {
  const url = absoluteUrl(getLocalizedUrl(`/blog/${slug}`, language))
  const published = new Date(date)
  const modified = lastModified ? new Date(lastModified) : published

  return {
    '@context': 'https://schema.org',
    '@type': 'BlogPosting',
    headline: title,
    description,
    url,
    mainEntityOfPage: { '@type': 'WebPage', '@id': url },
    datePublished: published.toISOString(),
    dateModified: modified.toISOString(),
    inLanguage: language,
    image: absoluteUrl(image),
    author: {
      '@type': 'Person',
      name: author,
      ...(authorUrl ? { url: authorUrl } : {}),
    },
    publisher: {
      '@type': 'Organization',
      name: siteConfig.name,
      url: siteConfig.url,
      logo: { '@type': 'ImageObject', url: siteConfig.ogImage },
    },
  }
}

export function buildDocsBreadcrumbJsonLd({
  language,
  entries,
}: {
  language: Language
  entries: { name: string; path: string }[]
}): Record<string, unknown> {
  return {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: entries.map((entry, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: entry.name,
      item: absoluteUrl(getLocalizedUrl(entry.path, language)),
    })),
  }
}
