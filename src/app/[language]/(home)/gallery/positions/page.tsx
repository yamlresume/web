import type { Metadata } from 'next'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
import { getGalleryItems } from '@/lib/gallery'
import { GalleryPositionsList } from '../components/GalleryPositionsList'

export const revalidate = false

interface GalleryPositionsPageProps {
  params: Promise<{ language: string }>
}

export default async function GalleryPositionsPage({
  params,
}: GalleryPositionsPageProps) {
  const { language } = await params

  return (
    <GalleryPositionsList
      items={getGalleryItems()}
      language={language as Language}
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
  }
}
