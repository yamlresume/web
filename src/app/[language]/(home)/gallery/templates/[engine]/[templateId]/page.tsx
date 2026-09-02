import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { type Language, languages } from '@/i18n'
import {
  getGalleryDetailMetadata,
  getTemplateGalleryParams,
  resolveTemplateGalleryDetail,
} from '@/lib/galleryRoutes'
import { ResolvedGalleryDetail } from '../../../components/ResolvedGalleryDetail'

interface TemplateGalleryPageProps {
  params: Promise<{
    language: string
    engine: string
    templateId: string
  }>
}

export function generateStaticParams() {
  return languages.flatMap((language) =>
    getTemplateGalleryParams().map((params) => ({ language, ...params }))
  )
}

export default async function TemplateGalleryPage({
  params,
}: TemplateGalleryPageProps) {
  const { language, engine, templateId } = await params
  const detail = resolveTemplateGalleryDetail(engine, templateId)

  if (!detail) {
    notFound()
  }

  return (
    <ResolvedGalleryDetail detail={detail} language={language as Language} />
  )
}

export async function generateMetadata({
  params,
}: TemplateGalleryPageProps): Promise<Metadata> {
  const { language, engine, templateId } = await params
  const detail = resolveTemplateGalleryDetail(engine, templateId)

  return detail ? getGalleryDetailMetadata(detail, language as Language) : {}
}
