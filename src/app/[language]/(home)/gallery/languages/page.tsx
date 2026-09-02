import type { Metadata } from 'next'
import { defaultLanguage, type Language, languages } from '@/i18n'
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
  const path = '/gallery/languages'

  return {
    title: 'Resume Examples by Language',
    description:
      'Browse localized resume examples with language-aware typography and content.',
    alternates: {
      canonical: language === defaultLanguage ? path : `/${language}${path}`,
      languages: Object.fromEntries(
        languages.map((locale) => [
          locale,
          locale === defaultLanguage ? path : `/${locale}${path}`,
        ])
      ),
    },
  }
}
