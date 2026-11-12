import type { Metadata } from 'next'
import { defaultLanguage, getGalleryMessages } from '@/i18n'
import { GalleryTemplatesList } from '../components/GalleryTemplatesList'

export const revalidate = false

export default function GalleryTemplatesPage() {
  return <GalleryTemplatesList language={defaultLanguage} />
}

export function generateMetadata(): Metadata {
  const copy = getGalleryMessages(defaultLanguage).metadata.templates

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: '/gallery/templates',
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/templates/open-graph.png',
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: '/api/og/gallery/templates/open-graph.png',
    },
  }
}
