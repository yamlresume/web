import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { defaultLanguage } from '@/i18n'
import {
  getExampleGalleryParams,
  getGalleryDetailMetadata,
  resolveExampleGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../../components/ResolvedGalleryDetail'

interface ExampleGalleryPageProps {
  params: Promise<{
    sampleId: string
    resumeLanguage: string
  }>
}

export function generateStaticParams() {
  return getExampleGalleryParams()
}

export default async function ExampleGalleryPage({
  params,
}: ExampleGalleryPageProps) {
  const { sampleId, resumeLanguage } = await params
  const detail = resolveExampleGalleryDetail(sampleId, resumeLanguage)

  if (!detail) {
    notFound()
  }

  return <ResolvedGalleryDetail detail={detail} language={defaultLanguage} />
}

export async function generateMetadata({
  params,
}: ExampleGalleryPageProps): Promise<Metadata> {
  const { sampleId, resumeLanguage } = await params
  const detail = resolveExampleGalleryDetail(sampleId, resumeLanguage)

  return detail ? getGalleryDetailMetadata(detail) : {}
}
