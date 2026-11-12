import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { defaultLanguage } from '@/i18n'
import {
  getGalleryDetailMetadata,
  getLanguageGalleryParams,
  resolveLanguageGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../components/ResolvedGalleryDetail'

interface LanguageGalleryPageProps {
  params: Promise<{
    resumeLanguage: string
  }>
}

export function generateStaticParams() {
  return getLanguageGalleryParams()
}

export default async function LanguageGalleryPage({
  params,
}: LanguageGalleryPageProps) {
  const { resumeLanguage } = await params
  const detail = resolveLanguageGalleryDetail(resumeLanguage)

  if (!detail) {
    notFound()
  }

  return <ResolvedGalleryDetail detail={detail} language={defaultLanguage} />
}

export async function generateMetadata({
  params,
}: LanguageGalleryPageProps): Promise<Metadata> {
  const { resumeLanguage } = await params
  const detail = resolveLanguageGalleryDetail(resumeLanguage)

  return detail ? getGalleryDetailMetadata(detail) : {}
}
