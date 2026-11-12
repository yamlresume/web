import clsx from 'clsx'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import { getTemplateGalleryPath, getTemplateRouteId } from '@/lib/galleryRoutes'
import { getTemplateShowcases } from '@/lib/templates'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GallerySection } from './GallerySection'
import {
  GalleryBreadcrumbJsonLd,
  GalleryItemListJsonLd,
} from './GalleryStructuredData'
import { GalleryTemplateCard } from './GalleryTemplateCard'

interface GalleryTemplatesListProps {
  language: Language
}

export function GalleryTemplatesList({ language }: GalleryTemplatesListProps) {
  const copy = getGalleryMessages(language).categories.templates
  const templates = getTemplateShowcases()

  return (
    <>
      <GalleryBreadcrumbJsonLd
        language={language}
        category={{ name: copy.title, path: '/gallery/templates' }}
      />
      <GalleryItemListJsonLd
        name={copy.title}
        language={language}
        items={templates.map((template) => ({
          name: template.name,
          path: getTemplateGalleryPath(
            template.engine,
            getTemplateRouteId(template)
          ),
        }))}
      />
      <main className="min-h-[900px] pb-24">
        <GalleryIndexBreadcrumb category="templates" language={language} />
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
    </>
  )
}
