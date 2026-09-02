import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { type Language, languages } from '@/i18n'
import {
  getGalleryDetailMetadata,
  getLanguageGalleryParams,
  resolveLanguageGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../components/ResolvedGalleryDetail'

interface LanguageGalleryPageProps {
  params: Promise<{
    language: string
    resumeLanguage: string
  }>
}

export function generateStaticParams() {
  return languages.flatMap((language) =>
    getLanguageGalleryParams().map((params) => ({ language, ...params }))
  )
}

export default async function LanguageGalleryPage({
  params,
}: LanguageGalleryPageProps) {
  const { language, resumeLanguage } = await params
  const detail = resolveLanguageGalleryDetail(resumeLanguage)

  if (!detail) {
    notFound()
  }

  return (
    <ResolvedGalleryDetail detail={detail} language={language as Language} />
  )
}

export async function generateMetadata({
  params,
}: LanguageGalleryPageProps): Promise<Metadata> {
  const { language, resumeLanguage } = await params
  const detail = resolveLanguageGalleryDetail(resumeLanguage)

  return detail ? getGalleryDetailMetadata(detail, language as Language) : {}
}
