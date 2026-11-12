import type { Metadata } from 'next'
import { defaultLanguage, getGalleryMessages } from '@/i18n'
import { GalleryLanguagesList } from '../components/GalleryLanguagesList'

export const revalidate = false

export default function GalleryLanguagesPage() {
  return <GalleryLanguagesList language={defaultLanguage} />
}

export function generateMetadata(): Metadata {
  const copy = getGalleryMessages(defaultLanguage).metadata.languages

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: '/gallery/languages',
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/languages/open-graph.png',
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/languages/open-graph.png',
    },
  }
}
