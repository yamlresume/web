import type { Metadata } from 'next'
import { defaultLanguage, type Language, languages } from '@/i18n'
import { GalleryList } from './components'

export const revalidate = false

export default async function GalleryPage({
  params,
}: {
  params: Promise<{ language: string }>
}) {
  const { language } = await params
  return <GalleryList language={language as Language} />
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ language: string }>
}): Promise<Metadata> {
  const { language } = await params

  const canonicalPath =
    language === defaultLanguage ? '/gallery' : `/${language}/gallery`

  const languagesAlternates: Record<string, string> = {}
  for (const lang of languages) {
    languagesAlternates[lang] =
      lang === defaultLanguage ? '/gallery' : `/${lang}/gallery`
  }

  return {
    title: 'Gallery',
    description:
      'Browse realistic resume examples generated with YAMLResume. Find a starting template for your next resume.',
    alternates: {
      canonical: canonicalPath,
      languages: languagesAlternates,
    },
    openGraph: {
      images: `/api/og/gallery/open-graph.png?language=${language}`,
    },
    twitter: {
      card: 'summary_large_image',
      images: `/api/og/gallery/open-graph.png?language=${language}`,
    },
  }
}
