'use client'

import clsx from 'clsx'
import { useMemo, useState } from 'react'
import { getLocalizedUrl, type Language, useTranslations } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
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
  type LanguageShowcase,
  type TemplateShowcase,
} from '@/lib/templates'
import { GalleryEmptyState } from './GalleryEmptyState'
import { GalleryFilterBar } from './GalleryFilterBar'
import { GalleryHero } from './GalleryHero'
import { GalleryLanguageCard } from './GalleryLanguageCard'
import { GalleryPositionCard } from './GalleryPositionCard'
import { GallerySection } from './GallerySection'
import { GalleryTemplateCard } from './GalleryTemplateCard'
import {
  countActiveFilters,
  emptyFilters,
  filterItems,
  getFacets,
} from './gallery-utils'

interface GalleryListProps {
  items: GalleryItem[]
  language: Language
}

function matchesSearch(text: string | undefined, query: string): boolean {
  return !query || (text ?? '').toLowerCase().includes(query)
}

function filterTemplates(
  templates: TemplateShowcase[],
  query: string
): TemplateShowcase[] {
  const normalized = query.toLowerCase()
  if (!normalized) {
    return templates
  }

  return templates.filter(
    (template) =>
      matchesSearch(template.name, normalized) ||
      matchesSearch(template.description, normalized) ||
      matchesSearch(template.engine, normalized) ||
      matchesSearch(template.style, normalized)
  )
}

function filterLanguages(
  languages: LanguageShowcase[],
  query: string,
  localeFilter: string
): LanguageShowcase[] {
  const normalized = query.toLowerCase()

  return languages.filter((showcase) => {
    const matchesLocale = !localeFilter || showcase.locale === localeFilter
    const matchesQuery =
      !normalized ||
      matchesSearch(showcase.label, normalized) ||
      matchesSearch(showcase.item.title, normalized) ||
      matchesSearch(showcase.item.description, normalized)

    return matchesLocale && matchesQuery
  })
}

export function GalleryList({ items, language }: GalleryListProps) {
  const t = useTranslations('gallery')
  const [filters, setFilters] = useState(emptyFilters)

  const facets = useMemo(() => getFacets(items), [items])
  const positionItems = useMemo(
    () => getPositionShowcases(language),
    [language]
  )
  const filteredPositions = useMemo(
    () => filterItems(positionItems, filters),
    [positionItems, filters]
  )
  const activeFiltersCount = countActiveFilters(filters)

  const templates = useMemo(() => getTemplateShowcases(), [])
  const languages = useMemo(() => getLanguageShowcases(), [])
  const filteredTemplates = filterTemplates(templates, filters.search)
  const filteredLanguages = filterLanguages(
    languages,
    filters.search,
    filters.language
  )

  const clearFilters = () => setFilters(emptyFilters)

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

      <GalleryFilterBar
        search={filters.search}
        filters={filters}
        facets={facets}
        activeFiltersCount={activeFiltersCount}
        onSearchChange={(search) =>
          setFilters((current) => ({ ...current, search }))
        }
        onFilterChange={(patch) =>
          setFilters((current) => ({ ...current, ...patch }))
        }
        onClear={clearFilters}
      />

      <GallerySection
        title={t('sections.templates')}
        description={t('sections.templatesDescription')}
      >
        <div className={gridClasses}>
          {filteredTemplates.map((showcase) => (
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
          {filteredLanguages.map((showcase) => (
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
        {filteredPositions.length === 0 ? (
          <GalleryEmptyState onClear={clearFilters} />
        ) : (
          <>
            <p className="mb-4 text-sm text-fd-muted-foreground">
              {filteredPositions.length} {t('resultsCount')}
            </p>
            <div className={gridClasses}>
              {filteredPositions.map((item) => (
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
          </>
        )}
      </GallerySection>
    </div>
  )
}
