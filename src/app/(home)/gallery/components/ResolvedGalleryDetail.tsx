import { getGalleryMessages, type Language } from '@/i18n'
import {
  getExampleInitializeCommand,
  getExampleInitializeSnippet,
  type ResolvedGalleryDetail as ResolvedGalleryDetailModel,
} from '@/lib/galleryRoutes'
import { highlightShell } from '@/lib/highlightShell'
import { highlightYaml } from '@/lib/highlightYaml'
import { GalleryDetail } from './GalleryDetail'
import {
  GalleryBreadcrumbJsonLd,
  GalleryDetailJsonLd,
} from './GalleryStructuredData'

interface ResolvedGalleryDetailProps {
  detail: ResolvedGalleryDetailModel
  language: Language
}

export async function ResolvedGalleryDetail({
  detail,
  language,
}: ResolvedGalleryDetailProps) {
  const initializeCommand =
    detail.target.type === 'example'
      ? getExampleInitializeCommand(
          detail.target.sampleId,
          detail.target.resumeLanguage
        )
      : undefined
  const initializeSnippet =
    detail.target.type === 'example'
      ? getExampleInitializeSnippet(
          detail.target.sampleId,
          detail.target.resumeLanguage
        )
      : undefined
  const [highlightedYaml, highlightedCommand] = await Promise.all([
    highlightYaml(detail.yamlContent),
    initializeSnippet ? highlightShell(initializeSnippet) : undefined,
  ])

  const category =
    detail.target.type === 'template'
      ? { name: 'Templates', path: '/gallery/templates' }
      : detail.target.type === 'language'
        ? { name: 'Languages', path: '/gallery/languages' }
        : {
            name: getGalleryMessages(language).categories.examples.title,
            path: '/gallery/examples',
          }

  return (
    <>
      <GalleryBreadcrumbJsonLd
        language={language}
        category={category}
        current={{
          name: detail.currentTemplate?.name ?? detail.item.title,
          path: detail.canonicalPath,
        }}
      />
      <GalleryDetailJsonLd detail={detail} language={language} />
      <GalleryDetail
        item={detail.item}
        language={language}
        target={detail.target}
        yamlContent={detail.yamlContent}
        highlightedYaml={highlightedYaml}
        preview={detail.preview}
        downloads={detail.downloads}
        highlightedTemplate={detail.currentTemplate?.template}
        currentTemplate={detail.currentTemplate}
        initializeCommand={initializeCommand}
        highlightedCommand={highlightedCommand}
      />
    </>
  )
}
