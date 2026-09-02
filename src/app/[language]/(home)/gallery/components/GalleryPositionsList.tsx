'use client'

import clsx from 'clsx'
import { useMemo, useState } from 'react'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  useTranslations,
} from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import { getPositionGalleryPath } from '@/lib/galleryRoutes'
import { getPositionShowcases } from '@/lib/templates'
import { GalleryEmptyState } from './GalleryEmptyState'
import { GalleryFilterBar } from './GalleryFilterBar'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GalleryPositionCard } from './GalleryPositionCard'
import { GallerySection } from './GallerySection'
import {
  countActiveFilters,
  emptyFilters,
  filterItems,
  getFacets,
} from './gallery-utils'

interface GalleryPositionsListProps {
  items: GalleryItem[]
  language: Language
}

export function GalleryPositionsList({
  items,
  language,
}: GalleryPositionsListProps) {
  const t = useTranslations('gallery')
  const copy = getGalleryMessages(language).categories.positions
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
    <main className="min-h-[900px] pb-24">
      <GalleryIndexBreadcrumb category="positions" language={language} />
      <header className="border-b bg-fd-muted/30">
        <div className="fd-container px-6 py-16 md:py-24">
          <div className="max-w-3xl">
            <h1 className="mb-6 text-4xl font-bold leading-tight md:text-6xl">
              {copy.title}
            </h1>
            <p className="text-lg text-fd-muted-foreground md:text-xl">
              {copy.description}
            </p>
          </div>
        </div>
      </header>

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

      <GallerySection title={copy.title} description={copy.description}>
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
    </main>
  )
}
