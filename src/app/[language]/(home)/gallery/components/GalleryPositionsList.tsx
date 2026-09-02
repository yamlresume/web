'use client'

import clsx from 'clsx'
import { useEffect, useMemo, useState } from 'react'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  useTranslations,
} from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import { getPositionGalleryPath } from '@/lib/galleryRoutes'
import { GalleryEmptyState } from './GalleryEmptyState'
import { GalleryFilterBar } from './GalleryFilterBar'
import { GalleryIndexBreadcrumb } from './GalleryIndexBreadcrumb'
import { GalleryPagination } from './GalleryPagination'
import { GalleryPositionCard } from './GalleryPositionCard'
import { GallerySection } from './GallerySection'
import {
  GalleryBreadcrumbJsonLd,
  GalleryItemListJsonLd,
} from './GalleryStructuredData'
import {
  countActiveFilters,
  emptyFilters,
  filterItems,
  type GalleryFilters,
  getFacets,
  getPositionItems,
} from './gallery-utils'

interface GalleryPositionsListProps {
  items: GalleryItem[]
  language: Language
  initialFilters?: GalleryFilters
  initialPage?: number
}

const PAGE_SIZE = 24

export function GalleryPositionsList({
  items,
  language,
  initialFilters = emptyFilters,
  initialPage = 1,
}: GalleryPositionsListProps) {
  const t = useTranslations('gallery')
  const copy = getGalleryMessages(language).categories.positions
  const [filters, setFilters] = useState(initialFilters)
  const [page, setPage] = useState(initialPage)
  const facets = useMemo(() => getFacets(items), [items])
  const positionItems = useMemo(
    () => getPositionItems(items, language, filters.language),
    [items, language, filters.language]
  )
  const filteredPositions = useMemo(
    () => filterItems(positionItems, filters),
    [positionItems, filters]
  )
  const activeFiltersCount = countActiveFilters(filters)
  const totalPages = Math.max(
    1,
    Math.ceil(filteredPositions.length / PAGE_SIZE)
  )
  const currentPage = Math.min(page, totalPages)
  const visiblePositions = filteredPositions.slice(
    (currentPage - 1) * PAGE_SIZE,
    currentPage * PAGE_SIZE
  )

  useEffect(() => {
    const url = new URL(window.location.href)
    const queryFilters: (keyof GalleryFilters)[] = [
      'search',
      'category',
      'tag',
      'language',
    ]

    for (const key of queryFilters) {
      if (filters[key]) {
        url.searchParams.set(key, filters[key])
      } else {
        url.searchParams.delete(key)
      }
    }

    if (currentPage > 1) {
      url.searchParams.set('page', String(currentPage))
    } else {
      url.searchParams.delete('page')
    }

    window.history.replaceState(null, '', `${url.pathname}${url.search}`)
  }, [filters, currentPage])

  const updateFilters = (patch: Partial<GalleryFilters>) => {
    setFilters((current) => ({ ...current, ...patch }))
    setPage(1)
  }
  const clearFilters = () => {
    setFilters(emptyFilters)
    setPage(1)
  }

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
      <GalleryBreadcrumbJsonLd
        language={language}
        category={{ name: copy.title, path: '/gallery/positions' }}
      />
      <GalleryItemListJsonLd
        name={copy.title}
        language={language}
        items={visiblePositions.map((item) => ({
          name: item.title,
          path: getPositionGalleryPath(item.id, item.language),
        }))}
      />
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
          onSearchChange={(search) => updateFilters({ search })}
          onFilterChange={updateFilters}
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
                {visiblePositions.map((item) => (
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
              <GalleryPagination
                currentPage={currentPage}
                totalPages={totalPages}
                filters={filters}
                language={language}
                onPageChange={setPage}
              />
            </>
          )}
        </GallerySection>
      </main>
    </>
  )
}
