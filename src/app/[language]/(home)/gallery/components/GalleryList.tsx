'use client'

import clsx from 'clsx'
import Link from 'next/link'
import { useMemo } from 'react'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import {
  getLanguageGalleryPath,
  getPositionGalleryPath,
  getTemplateGalleryPath,
  getTemplateRouteId,
} from '@/lib/galleryRoutes'
import {
  getLanguageShowcases,
  getPositionShowcases,
  getTemplateShowcases,
} from '@/lib/templates'
import { GalleryHero } from './GalleryHero'
import { GalleryLanguageCard } from './GalleryLanguageCard'
import { GalleryPositionCard } from './GalleryPositionCard'
import { GallerySection } from './GallerySection'
import { GalleryTemplateCard } from './GalleryTemplateCard'

interface GalleryListProps {
  language: Language
}

export function GalleryList({ language }: GalleryListProps) {
  const copy = getGalleryMessages(language)
  const positionItems = useMemo(
    () => getPositionShowcases(language),
    [language]
  )
  const templates = useMemo(() => getTemplateShowcases(), [])
  const languages = useMemo(() => getLanguageShowcases(), [])

  const gridClasses = clsx([
    'grid',
    'grid-cols-1',
    'gap-6',
    'sm:grid-cols-2',
    'lg:grid-cols-3',
    'xl:grid-cols-4',
  ])

  return (
    <div className="min-h-[900px] pb-24">
      <GalleryHero
        templateCount={templates.length}
        languageCount={languages.length}
        positionCount={positionItems.length}
        language={language}
      />

      <GallerySection
        title={copy.categories.templates.title}
        description={copy.categories.templates.description}
      >
        <div className="mb-6 flex justify-end">
          <Link
            href={getLocalizedUrl('/gallery/templates', language)}
            className="font-medium text-fd-primary hover:underline"
          >
            {copy.browseAll} →
          </Link>
        </div>
        <div className={gridClasses}>
          {templates.slice(0, 4).map((showcase) => (
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
      >
        <div className="mb-6 flex justify-end">
          <Link
            href={getLocalizedUrl('/gallery/languages', language)}
            className="font-medium text-fd-primary hover:underline"
          >
            {copy.browseAll} →
          </Link>
        </div>
        <div className={gridClasses}>
          {languages.slice(0, 4).map((showcase) => (
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
        title={copy.categories.positions.title}
        description={copy.categories.positions.description}
      >
        <div className="mb-6 flex justify-end">
          <Link
            href={getLocalizedUrl('/gallery/positions', language)}
            className="font-medium text-fd-primary hover:underline"
          >
            {copy.browseAll} →
          </Link>
        </div>
        <div className={gridClasses}>
          {positionItems.slice(0, 4).map((item) => (
            <GalleryPositionCard
              key={`${item.language}-${item.id}`}
              item={item}
              href={getLocalizedUrl(
                getPositionGalleryPath(item.id, item.language),
                language
              )}
            />
          ))}
        </div>
      </GallerySection>
    </div>
  )
}
