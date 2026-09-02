import type { Metadata } from 'next'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
import { getGalleryItems } from '@/lib/gallery'
import { GalleryExamplesList } from '../components/GalleryExamplesList'
import type { GalleryFilters } from '../components/gallery-utils'

export const revalidate = false

interface GalleryExamplesPageProps {
  params: Promise<{ language: string }>
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
  params,
  searchParams,
}: GalleryExamplesPageProps) {
  const [{ language }, query] = await Promise.all([params, searchParams])
  const initialFilters: GalleryFilters = {
    search: getFilterValue(query, 'search'),
    category: getFilterValue(query, 'category'),
    tag: getFilterValue(query, 'tag'),
    language: getFilterValue(query, 'language'),
  }

  return (
    <GalleryExamplesList
      items={getGalleryItems()}
      language={language as Language}
      initialFilters={initialFilters}
      initialPage={getPageValue(query)}
    />
  )
}

export async function generateMetadata({
  params,
  searchParams,
}: GalleryExamplesPageProps): Promise<Metadata> {
  const [{ language }, query] = await Promise.all([params, searchParams])
  const locale = language as Language
  const copy = getGalleryMessages(locale).metadata.examples
  const basePath = getLocalizedUrl('/gallery/examples', locale)
  const page = getPageValue(query)
  const hasFilters = ['search', 'category', 'tag', 'language'].some((key) =>
    Boolean(query[key])
  )
  const canonicalPath =
    page > 1 && !hasFilters ? `${basePath}?page=${page}` : basePath
  const languageAlternates = Object.fromEntries(
    languages.map((language) => [
      language,
      getLocalizedUrl('/gallery/examples', language),
    ])
  )

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: canonicalPath,
      languages: languageAlternates,
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/examples/open-graph.png?language=${locale}`,
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/examples/open-graph.png?language=${locale}`,
    },
  }
}
