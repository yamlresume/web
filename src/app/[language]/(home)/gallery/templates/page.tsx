import type { Metadata } from 'next'
import {
  getGalleryMessages,
  getLocalizedUrl,
  type Language,
  languages,
} from '@/i18n'
import { GalleryTemplatesList } from '../components/GalleryTemplatesList'

export const revalidate = false

interface GalleryTemplatesPageProps {
  params: Promise<{ language: string }>
}

export default async function GalleryTemplatesPage({
  params,
}: GalleryTemplatesPageProps) {
  const { language } = await params
  return <GalleryTemplatesList language={language as Language} />
}

export async function generateMetadata({
  params,
}: GalleryTemplatesPageProps): Promise<Metadata> {
  const { language } = await params
  const locale = language as Language
  const copy = getGalleryMessages(locale).metadata.templates
  const path = '/gallery/templates'

  return {
    title: copy.title,
    description: copy.description,
    alternates: {
      canonical: getLocalizedUrl(path, locale),
      languages: Object.fromEntries(
        languages.map((language) => [language, getLocalizedUrl(path, language)])
      ),
    },
    openGraph: {
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/templates/open-graph.png?language=${locale}`,
    },
    twitter: {
      card: 'summary_large_image',
      title: copy.title,
      description: copy.description,
      images: `/api/og/gallery/templates/open-graph.png?language=${locale}`,
    },
  }
}
