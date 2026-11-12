'use client'

import {
  IconFileDescription,
  IconLanguage,
  IconTemplate,
} from '@tabler/icons-react'
import clsx from 'clsx'
import { useMemo } from 'react'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import {
  getExampleGalleryPath,
  getLanguageGalleryPath,
  getTemplateGalleryPath,
  getTemplateRouteId,
} from '@/lib/galleryRoutes'
import {
  getExampleShowcases,
  getLanguageShowcases,
  getTemplateShowcases,
} from '@/lib/templates'
import { GalleryExampleCard } from './GalleryExampleCard'
import { GalleryHero } from './GalleryHero'
import { GalleryLanguageCard } from './GalleryLanguageCard'
import { GallerySection } from './GallerySection'
import { GalleryItemListJsonLd } from './GalleryStructuredData'
import { GalleryTemplateCard } from './GalleryTemplateCard'

interface GalleryListProps {
  language: Language
}

export function GalleryList({ language }: GalleryListProps) {
  const copy = getGalleryMessages(language)
  const exampleItems = useMemo(() => getExampleShowcases(language), [language])
  const templates = useMemo(() => getTemplateShowcases(), [])
  const languages = useMemo(() => getLanguageShowcases(), [])

  const featuredTemplates = templates.slice(0, 4)
  const featuredLanguages = languages.slice(0, 4)
  const featuredExamples = exampleItems.slice(0, 4)

  const gridClasses = clsx([
    'grid',
    'grid-cols-1',
    'gap-6',
    'sm:grid-cols-2',
    'lg:grid-cols-3',
    'xl:grid-cols-4',
  ])

  return (
    <>
      <GalleryItemListJsonLd
        name={copy.metadata.gallery.title}
        language={language}
        items={[
          ...featuredTemplates.map((template) => ({
            name: template.name,
            path: getTemplateGalleryPath(
              template.engine,
              getTemplateRouteId(template)
            ),
          })),
          ...featuredLanguages.map((showcase) => ({
            name: showcase.label,
            path: getLanguageGalleryPath(showcase.locale),
          })),
          ...featuredExamples.map((item) => ({
            name: item.title,
            path: getExampleGalleryPath(item.id, item.language),
          })),
        ]}
      />
      <div className="min-h-[900px] pb-24">
        <GalleryHero
          templateCount={templates.length}
          languageCount={languages.length}
          exampleCount={exampleItems.length}
          language={language}
        />

        <GallerySection
          title={copy.categories.templates.title}
          description={copy.categories.templates.description}
          icon={IconTemplate}
          action={{
            href: getLocalizedUrl('/gallery/templates', language),
            label: copy.browseAllTemplates,
          }}
        >
          <div className={gridClasses}>
            {featuredTemplates.map((showcase) => (
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

        <GallerySection
          title={copy.categories.languages.title}
          description={copy.categories.languages.description}
          icon={IconLanguage}
          action={{
            href: getLocalizedUrl('/gallery/languages', language),
            label: copy.browseAllLanguages,
          }}
        >
          <div className={gridClasses}>
            {featuredLanguages.map((showcase) => (
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

        <GallerySection
          title={copy.categories.examples.title}
          description={copy.categories.examples.description}
          icon={IconFileDescription}
          action={{
            href: getLocalizedUrl('/gallery/examples', language),
            label: copy.browseAllExamples,
          }}
        >
          <div className={gridClasses}>
            {featuredExamples.map((item) => (
              <GalleryExampleCard
                key={`${item.language}-${item.id}`}
                item={item}
                href={getLocalizedUrl(
                  getExampleGalleryPath(item.id, item.language),
                  language
                )}
              />
            ))}
          </div>
        </GallerySection>
      </div>
    </>
  )
}
