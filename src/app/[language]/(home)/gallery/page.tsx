import type { Metadata } from 'next'
import {
  defaultLanguage,
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
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

  const copy = getGalleryMessages(language as Language).metadata.gallery
  const canonicalPath = getLocalizedUrl('/gallery', language as Language)

  const languagesAlternates: Record<string, string> = {}
  for (const lang of languages) {
    languagesAlternates[lang] =
      lang === defaultLanguage ? '/gallery' : `/${lang}/gallery`
  }

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: canonicalPath,
      languages: languagesAlternates,
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/open-graph.png?language=${language}`,
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/open-graph.png?language=${language}`,
    },
  }
}
