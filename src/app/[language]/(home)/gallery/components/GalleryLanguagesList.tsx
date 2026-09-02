import clsx from 'clsx'
import { getLocalizedUrl, getTranslations, type Language } from '@/i18n'
import { getLanguageGalleryPath } from '@/lib/galleryRoutes'
import { getLanguageShowcases } from '@/lib/templates'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GalleryLanguageCard } from './GalleryLanguageCard'
import { GallerySection } from './GallerySection'

interface GalleryLanguagesListProps {
  language: Language
}

export function GalleryLanguagesList({ language }: GalleryLanguagesListProps) {
  const t = getTranslations(language, 'gallery')
  const languages = getLanguageShowcases()

  return (
    <main className="min-h-[900px] pb-24">
      <GalleryIndexBreadcrumb category="languages" language={language} />
      <header className="border-b bg-fd-muted/30">
        <div className="fd-container px-6 py-16 md:py-24">
          <h1 className="mb-6 text-4xl font-bold leading-tight md:text-6xl">
            {t('sections.languages')}
          </h1>
          <p className="max-w-3xl text-lg text-fd-muted-foreground md:text-xl">
            {t('sections.languagesDescription')}
          </p>
        </div>
      </header>
      <GallerySection title={t('sections.languages')}>
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
  )
}
