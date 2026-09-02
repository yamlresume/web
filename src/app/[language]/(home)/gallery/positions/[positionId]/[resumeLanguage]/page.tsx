import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { type Language, languages } from '@/i18n'
import {
  getGalleryDetailMetadata,
  getPositionGalleryParams,
  resolvePositionGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../../components/ResolvedGalleryDetail'

interface PositionGalleryPageProps {
  params: Promise<{
    language: string
    positionId: string
    resumeLanguage: string
  }>
}

export function generateStaticParams() {
  return languages.flatMap((language) =>
    getPositionGalleryParams().map((params) => ({ language, ...params }))
  )
}

export default async function PositionGalleryPage({
  params,
}: PositionGalleryPageProps) {
  const { language, positionId, resumeLanguage } = await params
  const detail = resolvePositionGalleryDetail(positionId, resumeLanguage)

  if (!detail) {
    notFound()
  }

  return (
    <ResolvedGalleryDetail detail={detail} language={language as Language} />
  )
}

export async function generateMetadata({
  params,
}: PositionGalleryPageProps): Promise<Metadata> {
  const { language, positionId, resumeLanguage } = await params
  const detail = resolvePositionGalleryDetail(positionId, resumeLanguage)

  return detail ? getGalleryDetailMetadata(detail, language as Language) : {}
}
