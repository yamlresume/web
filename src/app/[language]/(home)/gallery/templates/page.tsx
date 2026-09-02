import type { Metadata } from 'next'
import { defaultLanguage, type Language, languages } from '@/i18n'
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
  const path = '/gallery/templates'

  return {
    title: 'Resume Templates',
    description:
      'Browse professional resume templates for LaTeX, HTML, DOCX, and Markdown.',
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
