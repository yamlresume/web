import type { LayoutEngine, LocaleLanguage } from '@yamlresume/core'
import type { Metadata } from 'next'
import { getLocalizedUrl, type Language, languages } from '@/i18n'
import {
  type GalleryItem,
  getGalleryItemByIdAndLocale,
  getGalleryItems,
  getSampleYamlContent,
  getTemplateYamlContent,
  isLocaleLanguage,
} from './gallery'
import {
  getLanguageShowcases,
  getTemplateShowcases,
  type TemplateShowcase,
} from './templates'

export type GalleryDetailTarget =
  | {
      type: 'template'
      engine: LayoutEngine
      templateId: string
    }
  | {
      type: 'language'
      resumeLanguage: LocaleLanguage
    }
  | {
      type: 'example'
      sampleId: string
      resumeLanguage: LocaleLanguage
    }

export interface GalleryPreview {
  type: 'image'
  src: string
}

export interface GalleryDownload {
  format: 'pdf' | 'tex' | 'docx' | 'html' | 'markdown' | 'webp'
  href: string
}

export interface ResolvedGalleryDetail {
  target: GalleryDetailTarget
  item: GalleryItem
  yamlContent?: string
  currentTemplate?: TemplateShowcase
  preview: GalleryPreview
  downloads: GalleryDownload[]
  canonicalPath: string
}

function getItemDownloads(item: GalleryItem): GalleryDownload[] {
  return [
    { format: 'pdf', href: item.pdfUrl },
    ...(item.texUrl ? [{ format: 'tex' as const, href: item.texUrl }] : []),
    { format: 'docx', href: item.docxUrl },
    { format: 'html', href: item.htmlUrl },
    { format: 'markdown', href: item.markdownUrl },
    { format: 'webp', href: item.thumbnailUrl },
  ]
}

function getTemplateAssetUrl(
  showcase: TemplateShowcase,
  extension: string
): string {
  const routeId = getTemplateRouteId(showcase)
  return `/gallery/templates/${showcase.engine}/${routeId}/resume.${extension}`
}

function getTemplatePresentation(showcase: TemplateShowcase): {
  preview: GalleryPreview
  downloads: GalleryDownload[]
} {
  if (showcase.engine === 'docx') {
    return {
      preview: { type: 'image', src: showcase.imageUrl },
      downloads: [
        { format: 'docx', href: getTemplateAssetUrl(showcase, 'docx') },
      ],
    }
  }

  const webpUrl = getTemplateAssetUrl(showcase, 'webp')

  if (showcase.engine === 'html') {
    const htmlUrl = getTemplateAssetUrl(showcase, 'html')
    return {
      preview: { type: 'image', src: webpUrl },
      downloads: [
        { format: 'html', href: htmlUrl },
        { format: 'webp', href: webpUrl },
      ],
    }
  }

  const pdfUrl = getTemplateAssetUrl(showcase, 'pdf')
  return {
    preview: { type: 'image', src: webpUrl },
    downloads: [
      { format: 'pdf', href: pdfUrl },
      { format: 'tex', href: getTemplateAssetUrl(showcase, 'tex') },
      { format: 'webp', href: webpUrl },
    ],
  }
}

export function getTemplateRouteId(showcase: TemplateShowcase): string {
  return showcase.template ?? showcase.id
}

export function getTemplateGalleryPath(
  engine: LayoutEngine,
  templateId: string
): string {
  return `/gallery/templates/${engine}/${templateId}`
}

export function getLanguageGalleryPath(resumeLanguage: LocaleLanguage): string {
  return `/gallery/languages/${resumeLanguage}`
}

export function getExampleInitializeCommand(
  sampleId: string,
  resumeLanguage: LocaleLanguage
): string {
  return `yamlresume new --sample ${sampleId} --language ${resumeLanguage} my-resume.yml`
}

export function getExampleInitializeSnippet(
  sampleId: string,
  resumeLanguage: LocaleLanguage
): string {
  return [
    'yamlresume new \\',
    `  --sample ${sampleId} \\`,
    `  --language ${resumeLanguage} \\`,
    '  my-resume.yml',
  ].join('\n')
}

export function getExampleGalleryPath(
  sampleId: string,
  resumeLanguage: LocaleLanguage
): string {
  return `/gallery/examples/${sampleId}/${resumeLanguage}`
}

export function resolveTemplateGalleryDetail(
  engine: string,
  templateId: string
): ResolvedGalleryDetail | undefined {
  const currentTemplate = getTemplateShowcases().find(
    (showcase) =>
      showcase.engine === engine && getTemplateRouteId(showcase) === templateId
  )

  if (!currentTemplate) {
    return undefined
  }

  const item = getGalleryItemByIdAndLocale(
    currentTemplate.sampleId,
    currentTemplate.sampleLocale
  )

  if (!item) {
    return undefined
  }

  const presentation = getTemplatePresentation(currentTemplate)

  return {
    target: {
      type: 'template',
      engine: currentTemplate.engine,
      templateId,
    },
    item,
    yamlContent: getTemplateYamlContent(
      item.id,
      item.language,
      currentTemplate.engine,
      currentTemplate.template
    ),
    currentTemplate,
    ...presentation,
    canonicalPath: getTemplateGalleryPath(currentTemplate.engine, templateId),
  }
}

export function resolveLanguageGalleryDetail(
  resumeLanguage: string
): ResolvedGalleryDetail | undefined {
  if (!isLocaleLanguage(resumeLanguage)) {
    return undefined
  }

  const showcase = getLanguageShowcases().find(
    (candidate) => candidate.locale === resumeLanguage
  )

  if (!showcase) {
    return undefined
  }

  return {
    target: { type: 'language', resumeLanguage },
    item: showcase.item,
    yamlContent: getSampleYamlContent(showcase.item.id, resumeLanguage),
    preview: { type: 'image', src: showcase.item.thumbnailUrl },
    downloads: getItemDownloads(showcase.item),
    canonicalPath: getLanguageGalleryPath(resumeLanguage),
  }
}

export function resolveExampleGalleryDetail(
  sampleId: string,
  resumeLanguage: string
): ResolvedGalleryDetail | undefined {
  if (!isLocaleLanguage(resumeLanguage)) {
    return undefined
  }

  const item = getGalleryItemByIdAndLocale(sampleId, resumeLanguage)

  if (!item) {
    return undefined
  }

  return {
    target: { type: 'example', sampleId, resumeLanguage },
    item,
    yamlContent: getSampleYamlContent(sampleId, resumeLanguage, {
      withLayouts: true,
    }),
    preview: { type: 'image', src: item.thumbnailUrl },
    downloads: getItemDownloads(item),
    canonicalPath: getExampleGalleryPath(sampleId, resumeLanguage),
  }
}

export function getTemplateGalleryParams(): {
  engine: LayoutEngine
  templateId: string
}[] {
  return getTemplateShowcases().map((showcase) => ({
    engine: showcase.engine,
    templateId: getTemplateRouteId(showcase),
  }))
}

export function getLanguageGalleryParams(): {
  resumeLanguage: LocaleLanguage
}[] {
  return getLanguageShowcases().map((showcase) => ({
    resumeLanguage: showcase.locale,
  }))
}

export function getExampleGalleryParams(): {
  sampleId: string
  resumeLanguage: LocaleLanguage
}[] {
  return getGalleryItems().map((item) => ({
    sampleId: item.id,
    resumeLanguage: item.language,
  }))
}

function getDetailTitle(detail: ResolvedGalleryDetail): string {
  if (detail.target.type === 'template' && detail.currentTemplate) {
    return `${detail.currentTemplate.name} ${detail.target.engine.toUpperCase()} Resume Template`
  }

  if (detail.target.type === 'language') {
    return `${detail.item.languageLabel} Resume Examples`
  }

  return `${detail.item.title} Resume Example in ${detail.item.languageLabel}`
}

export function getGalleryDetailMetadata(
  detail: ResolvedGalleryDetail,
  siteLanguage: Language
): Metadata {
  const languageAlternates = Object.fromEntries(
    languages.map((language) => [
      language,
      getLocalizedUrl(detail.canonicalPath, language),
    ])
  )

  return {
    title: getDetailTitle(detail),
    description: detail.currentTemplate?.description ?? detail.item.description,
    alternates: {
      canonical: getLocalizedUrl(detail.canonicalPath, siteLanguage),
      languages: languageAlternates,
    },
  }
}
