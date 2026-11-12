import { IconChevronLeft, IconChevronRight } from '@tabler/icons-react'
import Link from 'next/link'
import { getLocalizedUrl, type Language } from '@/i18n'
import type { GalleryFilters } from './gallery-utils'

interface GalleryPaginationProps {
  currentPage: number
  totalPages: number
  filters: GalleryFilters
  language: Language
  onPageChange: (page: number) => void
}

function getPageHref(
  page: number,
  filters: GalleryFilters,
  language: Language
): string {
  const query = new URLSearchParams()
  for (const [key, value] of Object.entries(filters)) {
    if (value) query.set(key, value)
  }
  if (page > 1) query.set('page', String(page))

  const path = getLocalizedUrl('/gallery/examples', language)
  return query.size > 0 ? `${path}?${query}` : path
}

export function GalleryPagination({
  currentPage,
  totalPages,
  filters,
  language,
  onPageChange,
}: GalleryPaginationProps) {
  if (totalPages <= 1) return null

  const pages = Array.from({ length: totalPages }, (_, index) => index + 1)

  return (
    <nav aria-label="Pagination" className="mt-10 flex justify-center gap-2">
      {currentPage > 1 && (
        <Link
          href={getPageHref(currentPage - 1, filters, language)}
          onClick={(event) => {
            event.preventDefault()
            onPageChange(currentPage - 1)
          }}
          aria-label="Previous page"
          className="flex size-10 items-center justify-center border border-fd-border hover:border-fd-primary"
        >
          <IconChevronLeft aria-hidden="true" size={18} />
        </Link>
      )}
      {pages.map((page) => (
        <Link
          key={page}
          href={getPageHref(page, filters, language)}
          onClick={(event) => {
            event.preventDefault()
            onPageChange(page)
          }}
          aria-current={page === currentPage ? 'page' : undefined}
          className="flex size-10 items-center justify-center border border-fd-border hover:border-fd-primary aria-[current=page]:border-fd-primary aria-[current=page]:bg-fd-primary aria-[current=page]:text-fd-primary-foreground"
        >
          {page}
        </Link>
      ))}
      {currentPage < totalPages && (
        <Link
          href={getPageHref(currentPage + 1, filters, language)}
          onClick={(event) => {
            event.preventDefault()
            onPageChange(currentPage + 1)
          }}
          aria-label="Next page"
          className="flex size-10 items-center justify-center border border-fd-border hover:border-fd-primary"
        >
          <IconChevronRight aria-hidden="true" size={18} />
        </Link>
      )}
    </nav>
  )
}
