import { NextResponse } from 'next/server'
import {
  getSampleYamlContent,
  getTemplateYamlContent,
  isLocaleLanguage,
} from '@/lib/gallery'
import { getTemplateRouteId } from '@/lib/galleryRoutes'
import { getTemplateShowcases } from '@/lib/templates'

interface GalleryYamlRouteProps {
  params: Promise<{
    resumeId: string
    locale: string
  }>
}

export async function GET(request: Request, { params }: GalleryYamlRouteProps) {
  const { resumeId, locale } = await params

  if (!isLocaleLanguage(locale)) {
    return NextResponse.json({ error: 'Invalid locale' }, { status: 404 })
  }

  const searchParams = new URL(request.url).searchParams
  const engine = searchParams.get('engine')
  const template = searchParams.get('template')
  let yamlContent: string | undefined

  if (engine || template) {
    const showcase = getTemplateShowcases().find(
      (candidate) =>
        candidate.sampleId === resumeId &&
        candidate.sampleLocale === locale &&
        candidate.engine === engine &&
        getTemplateRouteId(candidate) === template
    )

    if (!showcase) {
      return NextResponse.json({ error: 'Template not found' }, { status: 404 })
    }

    yamlContent = getTemplateYamlContent(
      resumeId,
      locale,
      showcase.engine,
      showcase.template
    )
  } else {
    yamlContent = getSampleYamlContent(resumeId, locale)
  }

  if (!yamlContent) {
    return NextResponse.json({ error: 'Sample not found' }, { status: 404 })
  }

  return new NextResponse(yamlContent, {
    headers: {
      'Content-Type': 'text/yaml; charset=utf-8',
      'Content-Disposition': `attachment; filename="${resumeId}-${locale}.yml"`,
    },
  })
}
