import clsx from 'clsx'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import { getLanguageGalleryPath } from '@/lib/galleryRoutes'
import { getLanguageShowcases } from '@/lib/templates'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GalleryLanguageCard } from './GalleryLanguageCard'
import { GallerySection } from './GallerySection'
import {
  GalleryBreadcrumbJsonLd,
  GalleryItemListJsonLd,
} from './GalleryStructuredData'

interface GalleryLanguagesListProps {
  language: Language
}

export function GalleryLanguagesList({ language }: GalleryLanguagesListProps) {
  const copy = getGalleryMessages(language).categories.languages
  const languages = getLanguageShowcases()

  return (
    <>
      <GalleryBreadcrumbJsonLd
        language={language}
        category={{ name: copy.title, path: '/gallery/languages' }}
      />
      <GalleryItemListJsonLd
        name={copy.title}
        language={language}
        items={languages.map((showcase) => ({
          name: showcase.label,
          path: getLanguageGalleryPath(showcase.locale),
        }))}
      />
      <main className="min-h-[900px] pb-24">
        <GalleryIndexBreadcrumb category="languages" language={language} />
        <header className="border-b bg-fd-muted/30">
          <div className="fd-container px-6 py-16 md:py-24">
            <h1 className="mb-6 text-4xl font-bold leading-tight md:text-6xl">
              {copy.title}
            </h1>
            <p className="max-w-3xl text-lg text-fd-muted-foreground md:text-xl">
              {copy.description}
            </p>
          </div>
        </header>
        <GallerySection title={copy.title}>
          <div
            className={clsx([
              'grid grid-cols-1 gap-6',
              'sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4',
            ])}
          >
            {languages.map((showcase) => (
              <GalleryLanguageCard
                key={showcase.locale}
                showcase={showcase}
                href={getLocalizedUrl(
                  getLanguageGalleryPath(showcase.locale),
                  language
                )}
              />
            ))}
          </div>
        </GallerySection>
      </main>
    </>
  )
}
