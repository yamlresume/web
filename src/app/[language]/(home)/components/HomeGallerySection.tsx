import { IconArrowRight } from '@tabler/icons-react'
import Link from 'next/link'
import { getHomeGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import { getGalleryItemsByLanguage } from '@/lib/gallery'
import { getExampleGalleryPath } from '@/lib/galleryRoutes'
import { GalleryBadge } from '../gallery/components/GalleryBadge'
import { GalleryCard } from '../gallery/components/GalleryCard'
import { Section } from './common'

interface HomeGallerySectionProps {
  language: Language
}

const featuredResumeIds = [
  'software-engineer',
  'product-manager',
  'data-scientist',
  'ux-designer',
]

export function HomeGallerySection({ language }: HomeGallerySectionProps) {
  const messages = getHomeGalleryMessages(language)
  const itemsById = new Map(
    getGalleryItemsByLanguage(language).map((item) => [item.id, item])
  )
  const items = featuredResumeIds.flatMap((id) => {
    const item = itemsById.get(id)
    return item ? [item] : []
  })

  return (
    <Section title={messages.title} className="max-w-7xl">
      <div className="flex flex-col gap-10">
        <div className="flex flex-col items-center gap-5 text-center">
          <p className="max-w-2xl text-lg text-fd-muted-foreground">
            {messages.description}
          </p>
          <Link
            href={getLocalizedUrl('/gallery', language)}
            className="inline-flex items-center gap-2 font-semibold text-fd-foreground hover:underline"
          >
            {messages.browseAll}
            <IconArrowRight aria-hidden="true" size={18} />
          </Link>
        </div>

        <div className="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {items.map((item) => (
            <GalleryCard
              key={item.id}
              href={getLocalizedUrl(
                getExampleGalleryPath(item.id, item.language),
                language
              )}
              title={item.title}
              description={item.description}
              thumbnailSrc={item.thumbnailUrl}
              thumbnailAlt={messages.previewAlt.replace('{title}', item.title)}
              badges={
                <>
                  <GalleryBadge variant="primary">{item.category}</GalleryBadge>
                  <GalleryBadge>{item.languageLabel}</GalleryBadge>
                </>
              }
            />
          ))}
        </div>
      </div>
    </Section>
  )
}
