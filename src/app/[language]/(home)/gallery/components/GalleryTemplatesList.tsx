import clsx from 'clsx'
import { getLocalizedUrl, getTranslations, type Language } from '@/i18n'
import { getTemplateGalleryPath, getTemplateRouteId } from '@/lib/galleryRoutes'
import { getTemplateShowcases } from '@/lib/templates'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GallerySection } from './GallerySection'
import { GalleryTemplateCard } from './GalleryTemplateCard'

interface GalleryTemplatesListProps {
  language: Language
}

export function GalleryTemplatesList({ language }: GalleryTemplatesListProps) {
  const t = getTranslations(language, 'gallery')
  const templates = getTemplateShowcases()

  return (
    <main className="min-h-[900px] pb-24">
      <GalleryIndexBreadcrumb category="templates" language={language} />
      <header className="border-b bg-fd-muted/30">
        <div className="fd-container px-6 py-16 md:py-24">
          <h1 className="mb-6 text-4xl font-bold leading-tight md:text-6xl">
            {t('sections.templates')}
          </h1>
          <p className="max-w-3xl text-lg text-fd-muted-foreground md:text-xl">
            {t('sections.templatesDescription')}
          </p>
        </div>
      </header>
      <GallerySection title={t('sections.templates')}>
        <div
          className={clsx([
            'grid grid-cols-1 gap-6',
            'sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4',
          ])}
        >
          {templates.map((showcase) => (
            <GalleryTemplateCard
              key={`${showcase.engine}-${getTemplateRouteId(showcase)}`}
              showcase={showcase}
              href={getLocalizedUrl(
                getTemplateGalleryPath(
                  showcase.engine,
                  getTemplateRouteId(showcase)
                ),
                language
              )}
            />
          ))}
        </div>
      </GallerySection>
    </main>
  )
}
