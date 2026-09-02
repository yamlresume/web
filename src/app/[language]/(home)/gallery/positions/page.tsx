import type { Metadata } from 'next'
import { defaultLanguage, type Language, languages } from '@/i18n'
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
  const canonicalPath =
    language === defaultLanguage
      ? '/gallery/positions'
      : `/${language}/gallery/positions`
  const languageAlternates = Object.fromEntries(
    languages.map((locale) => [
      locale,
      locale === defaultLanguage
        ? '/gallery/positions'
        : `/${locale}/gallery/positions`,
    ])
  )

  return {
    title: 'Resume Examples by Position',
    description:
      'Browse position-specific resume examples and filter by category, tag, or language.',
    alternates: {
      canonical: canonicalPath,
      languages: languageAlternates,
    },
  }
}
