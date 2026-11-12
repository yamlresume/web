'use client'

import { IconSearch, IconX } from '@tabler/icons-react'
import clsx from 'clsx'
import { useTranslations } from '@/i18n'
import type { GalleryFacets, GalleryFilters } from './gallery-utils'
import { SearchableSelect } from './SearchableSelect'

interface GalleryFilterBarProps {
  search: string
  filters: GalleryFilters
  facets: GalleryFacets
  activeFiltersCount: number
  onSearchChange: (search: string) => void
  onFilterChange: (patch: Partial<GalleryFilters>) => void
  onClear: () => void
}

export function GalleryFilterBar({
  search,
  filters,
  facets,
  activeFiltersCount,
  onSearchChange,
  onFilterChange,
  onClear,
}: GalleryFilterBarProps) {
  const t = useTranslations('gallery')

  const activeChips = [
    { key: 'category', value: filters.category },
    { key: 'tag', value: filters.tag },
    { key: 'language', value: filters.language },
  ].filter((chip) => Boolean(chip.value))

  return (
    <section
      className={clsx([
        'sticky',
        'top-0',
        'z-30',
        'bg-fd-background/95',
        'backdrop-blur',
      ])}
    >
      <div className="fd-container border-b border-fd-foreground/10 px-6 py-4">
        <div className="flex flex-col lg:flex-row gap-4 lg:items-center justify-between">
          <div className="relative max-w-md w-full">
            <input
              type="text"
              value={search}
              onChange={(event) => onSearchChange(event.target.value)}
              placeholder={t('searchPlaceholder')}
              aria-label={t('searchPlaceholder')}
              className={clsx([
                'w-full',
                'border',
                'bg-fd-background',
                'px-4',
                'py-2',
                'pl-10',
                'text-sm',
                'outline-none',
                'focus:border-fd-primary',
              ])}
            />
            <IconSearch
              className="absolute left-3 top-2.5 text-fd-muted-foreground"
              size={16}
            />
          </div>

          <div className="flex flex-wrap gap-4 text-sm">
            <SearchableSelect
              value={filters.category}
              onChange={(value) => onFilterChange({ category: value })}
              options={facets.categories}
              placeholder={t('filterCategory')}
            />
            <SearchableSelect
              value={filters.tag}
              onChange={(value) => onFilterChange({ tag: value })}
              options={facets.tags}
              placeholder={t('filterTag')}
            />
            <SearchableSelect
              value={filters.language}
              onChange={(value) => onFilterChange({ language: value })}
              options={facets.languages}
              placeholder={t('filterLanguage')}
            />
            {activeFiltersCount > 0 && (
              <button
                type="button"
                onClick={onClear}
                className={clsx([
                  'border',
                  'px-4',
                  'py-2',
                  'text-sm',
                  'font-medium',
                  'transition-colors',
                  'hover:bg-fd-muted',
                ])}
              >
                {t('clearFilters')} ({activeFiltersCount})
              </button>
            )}
          </div>
        </div>

        {activeChips.length > 0 && (
          <div className="flex flex-wrap items-center gap-2 mt-4 text-sm">
            <span className="text-fd-muted-foreground">
              {t('activeFilters')}:
            </span>
            {activeChips.map((chip) => (
              <span
                key={chip.key}
                className={clsx([
                  'inline-flex',
                  'items-center',
                  'gap-1',
                  'px-2',
                  'py-1',
                  'bg-fd-muted',
                  'border',
                ])}
              >
                {chip.value}
                <button
                  type="button"
                  onClick={() =>
                    onFilterChange({
                      [chip.key]: '',
                    } as Partial<GalleryFilters>)
                  }
                  className="text-fd-muted-foreground hover:text-fd-foreground"
                  aria-label={`${t('activeFilters')} ${chip.value}`}
                >
                  <IconX size={14} />
                </button>
              </span>
            ))}
          </div>
        )}
      </div>
    </section>
  )
}
