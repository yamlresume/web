import type { Metadata } from 'next'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
import { getGalleryItems } from '@/lib/gallery'
import { GalleryPositionsList } from '../components/GalleryPositionsList'
import type { GalleryFilters } from '../components/gallery-utils'

export const revalidate = false

interface GalleryPositionsPageProps {
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

export default async function GalleryPositionsPage({
  params,
  searchParams,
}: GalleryPositionsPageProps) {
  const [{ language }, query] = await Promise.all([params, searchParams])
  const initialFilters: GalleryFilters = {
    search: getFilterValue(query, 'search'),
    category: getFilterValue(query, 'category'),
    tag: getFilterValue(query, 'tag'),
    language: getFilterValue(query, 'language'),
  }

  return (
    <GalleryPositionsList
      items={getGalleryItems()}
      language={language as Language}
      initialFilters={initialFilters}
    />
  )
}

export async function generateMetadata({
  params,
}: GalleryPositionsPageProps): Promise<Metadata> {
  const { language } = await params
  const locale = language as Language
  const copy = getGalleryMessages(locale).metadata.positions
  const canonicalPath = getLocalizedUrl('/gallery/positions', locale)
  const languageAlternates = Object.fromEntries(
    languages.map((language) => [
      language,
      getLocalizedUrl('/gallery/positions', language),
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
      images: `/api/og/gallery/positions/open-graph.png?language=${locale}`,
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/positions/open-graph.png?language=${locale}`,
    },
  }
}
