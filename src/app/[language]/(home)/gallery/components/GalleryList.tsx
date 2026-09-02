'use client'

import clsx from 'clsx'
import Link from 'next/link'
import { useMemo } from 'react'
import { getLocalizedUrl, type Language, useTranslations } from '@/i18n'
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
  const t = useTranslations('gallery')
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
        title={t('sections.templates')}
        description={t('sections.templatesDescription')}
      >
        <div className={gridClasses}>
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

      <GallerySection
        title={t('sections.languages')}
        description={t('sections.languagesDescription')}
      >
        <div className={gridClasses}>
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

      <GallerySection
        title={t('sections.positions')}
        description={t('sections.positionsDescription')}
      >
        <div className="mb-6 flex justify-end">
          <Link
            href={getLocalizedUrl('/gallery/positions', language)}
            className="font-medium text-fd-primary hover:underline"
          >
            {t('browseAll')} →
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
