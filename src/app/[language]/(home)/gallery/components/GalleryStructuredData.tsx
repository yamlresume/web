import { siteConfig } from '@/config/site'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type { ResolvedGalleryDetail } from '@/lib/galleryRoutes'

function absoluteUrl(path: string): string {
  return new URL(path, siteConfig.url).toString()
}

export function JsonLd({ data }: { data: Record<string, unknown> }) {
  return <script type="application/ld+json">{JSON.stringify(data)}</script>
}

export function GalleryItemListJsonLd({
  name,
  language,
  items,
}: {
  name: string
  language: Language
  items: { name: string; path: string }[]
}) {
  return (
    <JsonLd
      data={{
        '@context': 'https://schema.org',
        '@type': 'ItemList',
        name,
        inLanguage: language,
        numberOfItems: items.length,
        itemListElement: items.map((item, index) => ({
          '@type': 'ListItem',
          position: index + 1,
          name: item.name,
          url: absoluteUrl(getLocalizedUrl(item.path, language)),
        })),
      }}
    />
  )
}

export function GalleryBreadcrumbJsonLd({
  language,
  category,
  current,
}: {
  language: Language
  category?: { name: string; path: string }
  current?: { name: string; path: string }
}) {
  const entries = [
    {
      name: getGalleryMessages(language).metadata.gallery.title,
      path: '/gallery',
    },
    ...(category ? [category] : []),
    ...(current ? [current] : []),
  ]

  return (
    <JsonLd
      data={{
        '@context': 'https://schema.org',
        '@type': 'BreadcrumbList',
        itemListElement: entries.map((entry, index) => ({
          '@type': 'ListItem',
          position: index + 1,
          name: entry.name,
          item: absoluteUrl(getLocalizedUrl(entry.path, language)),
        })),
      }}
    />
  )
}

export function GalleryDetailJsonLd({
  detail,
  language,
}: {
  detail: ResolvedGalleryDetail
  language: Language
}) {
  const item: GalleryItem = detail.item

  return (
    <JsonLd
      data={{
        '@context': 'https://schema.org',
        '@type': 'CreativeWork',
        name: detail.currentTemplate?.name ?? item.title,
        description: detail.currentTemplate?.description ?? item.description,
        inLanguage: item.language,
        url: absoluteUrl(getLocalizedUrl(detail.canonicalPath, language)),
        image: absoluteUrl(detail.preview.src),
        creator: {
          '@type': 'Organization',
          name: siteConfig.name,
          url: siteConfig.url,
        },
      }}
    />
  )
}
