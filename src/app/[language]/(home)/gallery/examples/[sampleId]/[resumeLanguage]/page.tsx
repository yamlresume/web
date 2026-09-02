import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { type Language, languages } from '@/i18n'
import {
  getExampleGalleryParams,
  getGalleryDetailMetadata,
  resolveExampleGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../../components/ResolvedGalleryDetail'

interface ExampleGalleryPageProps {
  params: Promise<{
    language: string
    sampleId: string
    resumeLanguage: string
  }>
}

export function generateStaticParams() {
  return languages.flatMap((language) =>
    getExampleGalleryParams().map((params) => ({ language, ...params }))
  )
}

export default async function ExampleGalleryPage({
  params,
}: ExampleGalleryPageProps) {
  const { language, sampleId, resumeLanguage } = await params
  const detail = resolveExampleGalleryDetail(sampleId, resumeLanguage)

  if (!detail) {
    notFound()
  }

  return (
    <ResolvedGalleryDetail detail={detail} language={language as Language} />
  )
}

export async function generateMetadata({
  params,
}: ExampleGalleryPageProps): Promise<Metadata> {
  const { language, sampleId, resumeLanguage } = await params
  const detail = resolveExampleGalleryDetail(sampleId, resumeLanguage)

  return detail ? getGalleryDetailMetadata(detail, language as Language) : {}
}
