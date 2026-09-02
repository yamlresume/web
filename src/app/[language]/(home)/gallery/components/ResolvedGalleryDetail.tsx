import type { Language } from '@/i18n'
import type { ResolvedGalleryDetail as ResolvedGalleryDetailModel } from '@/lib/galleryRoutes'
import { highlightYaml } from '@/lib/highlightYaml'
import { GalleryDetail } from './GalleryDetail'

interface ResolvedGalleryDetailProps {
  detail: ResolvedGalleryDetailModel
  language: Language
}

export async function ResolvedGalleryDetail({
  detail,
  language,
}: ResolvedGalleryDetailProps) {
  const highlightedYaml = await highlightYaml(detail.yamlContent)

  return (
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
    />
  )
}
