import type { Metadata } from 'next'
import { defaultLanguage, getGalleryMessages } from '@/i18n'
import { GalleryList } from './components/GalleryList'

export const revalidate = false

export default function GalleryPage() {
  return <GalleryList language={defaultLanguage} />
}

export function generateMetadata(): Metadata {
  const copy = getGalleryMessages(defaultLanguage).metadata.gallery

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: '/gallery',
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/open-graph.png',
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/open-graph.png',
    },
  }
}
