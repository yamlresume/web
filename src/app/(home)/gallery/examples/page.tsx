import type { Metadata } from 'next'
import { defaultLanguage, getGalleryMessages } from '@/i18n'
import { getGalleryItems } from '@/lib/gallery'
import { GalleryExamplesList } from '../components/GalleryExamplesList'
import type { GalleryFilters } from '../components/gallery-utils'

export const revalidate = false

interface GalleryExamplesPageProps {
  searchParams: Promise<Record<string, string | string[] | undefined>>
}

function getFilterValue(
  searchParams: Record<string, string | string[] | undefined>,
  key: keyof GalleryFilters
): string {
  const value = searchParams[key]
  return typeof value === 'string' ? value : ''
}

function getPageValue(
  searchParams: Record<string, string | string[] | undefined>
): number {
  const value = searchParams.page
  if (typeof value !== 'string') return 1

  const page = Number.parseInt(value, 10)
  return Number.isSafeInteger(page) && page > 0 ? page : 1
}

export default async function GalleryExamplesPage({
  searchParams,
}: GalleryExamplesPageProps) {
  const query = await searchParams
  const initialFilters: GalleryFilters = {
    search: getFilterValue(query, 'search'),
    category: getFilterValue(query, 'category'),
    tag: getFilterValue(query, 'tag'),
    language: getFilterValue(query, 'language'),
  }

  return (
    <GalleryExamplesList
      items={getGalleryItems()}
      language={defaultLanguage}
      initialFilters={initialFilters}
      initialPage={getPageValue(query)}
    />
  )
}

export async function generateMetadata({
  searchParams,
}: GalleryExamplesPageProps): Promise<Metadata> {
  const query = await searchParams
  const copy = getGalleryMessages(defaultLanguage).metadata.examples
  const basePath = '/gallery/examples'
  const page = getPageValue(query)
  const hasFilters = ['search', 'category', 'tag', 'language'].some((key) =>
    Boolean(query[key])
  )
  const canonicalPath =
    page > 1 && !hasFilters ? `${basePath}?page=${page}` : basePath

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: canonicalPath,
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/examples/open-graph.png',
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/examples/open-graph.png',
    },
  }
}
