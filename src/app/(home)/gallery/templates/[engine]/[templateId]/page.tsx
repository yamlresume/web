import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { defaultLanguage } from '@/i18n'
import {
  getGalleryDetailMetadata,
  getTemplateGalleryParams,
  resolveTemplateGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../../components/ResolvedGalleryDetail'

interface TemplateGalleryPageProps {
  params: Promise<{
    engine: string
    templateId: string
  }>
}

export function generateStaticParams() {
  return getTemplateGalleryParams()
}

export default async function TemplateGalleryPage({
  params,
}: TemplateGalleryPageProps) {
  const { engine, templateId } = await params
  const detail = resolveTemplateGalleryDetail(engine, templateId)

  if (!detail) {
    notFound()
  }

  return <ResolvedGalleryDetail detail={detail} language={defaultLanguage} />
}

export async function generateMetadata({
  params,
}: TemplateGalleryPageProps): Promise<Metadata> {
  const { engine, templateId } = await params
  const detail = resolveTemplateGalleryDetail(engine, templateId)

  return detail ? getGalleryDetailMetadata(detail) : {}
}
