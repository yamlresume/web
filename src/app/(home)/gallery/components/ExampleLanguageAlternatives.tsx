import { IconLanguage } from '@tabler/icons-react'
import Link from 'next/link'
import {
  getGalleryDetailMessages,
  getLocalizedUrl,
  type Language,
} from '@/i18n'
import { type GalleryItem, getGalleryItems } from '@/lib/gallery'
import { getExampleGalleryPath } from '@/lib/galleryRoutes'

interface ExampleLanguageAlternativesProps {
  item: GalleryItem
  language: Language
}

export function ExampleLanguageAlternatives({
  item,
  language,
}: ExampleLanguageAlternativesProps) {
  const messages = getGalleryDetailMessages(language)
  const alternatives = getGalleryItems().filter(
    (candidate) =>
      candidate.id === item.id && candidate.language !== item.language
  )

  if (alternatives.length === 0) {
    return null
  }

  return (
    <section className="fd-container border-t border-fd-border px-6 py-10 md:py-14">
      <div className="mb-6">
        <h2 className="text-2xl font-bold">{messages.otherLanguages.title}</h2>
        <p className="mt-1 text-fd-muted-foreground">
          {messages.otherLanguages.description}
        </p>
      </div>
      <div className="flex flex-wrap gap-3">
        {alternatives.map((alternative) => (
          <Link
            key={alternative.language}
            href={getLocalizedUrl(
              getExampleGalleryPath(alternative.id, alternative.language),
              language
            )}
            className="inline-flex items-center gap-2 border border-fd-border bg-fd-card px-4 py-3 font-medium transition-colors hover:border-fd-primary hover:text-fd-primary"
          >
            <IconLanguage aria-hidden="true" size={18} />
            {alternative.languageLabel}
          </Link>
        ))}
      </div>
    </section>
  )
}
