import type { Metadata } from 'next'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
import { GalleryLanguagesList } from '../components/GalleryLanguagesList'

export const revalidate = false

interface GalleryLanguagesPageProps {
  params: Promise<{ language: string }>
}

export default async function GalleryLanguagesPage({
  params,
}: GalleryLanguagesPageProps) {
  const { language } = await params
  return <GalleryLanguagesList language={language as Language} />
}

export async function generateMetadata({
  params,
}: GalleryLanguagesPageProps): Promise<Metadata> {
  const { language } = await params
  const locale = language as Language
  const copy = getGalleryMessages(locale).metadata.languages
  const path = '/gallery/languages'

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: getLocalizedUrl(path, locale),
      languages: Object.fromEntries(
        languages.map((language) => [language, getLocalizedUrl(path, language)])
      ),
    },
  }
}
