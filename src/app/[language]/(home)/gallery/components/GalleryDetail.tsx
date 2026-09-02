import clsx from 'clsx'
import { getGalleryDetailMessages, type Language } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type {
  GalleryDetailTarget,
  GalleryDownload,
  GalleryPreview,
} from '@/lib/galleryRoutes'
import type { HighlightedYaml } from '@/lib/highlightYaml'
import type { TemplateShowcase } from '@/lib/templates'
import { DownloadFormatsCard } from './DownloadFormatsCard'
import { GalleryBreadcrumb } from './GalleryBreadcrumb'
import { GalleryExploreMore } from './GalleryExploreMore'
import { PositionLanguageAlternatives } from './PositionLanguageAlternatives'
import { PreviewTabs } from './PreviewTabs'
import { ResumeActions } from './ResumeActions'
import { ResumeMeta } from './ResumeMeta'
import { TemplateDetails } from './TemplateDetails'

interface GalleryDetailProps {
  item: GalleryItem
  language: Language
  target?: GalleryDetailTarget
  yamlContent?: string
  highlightedYaml?: HighlightedYaml
  preview?: GalleryPreview
  downloads?: GalleryDownload[]
  highlightedTemplate?: string
  currentTemplate?: TemplateShowcase
}

export function GalleryDetail({
  item,
  language,
  target,
  yamlContent,
  highlightedYaml,
  preview = { type: 'image', src: item.thumbnailUrl },
  downloads = [
    { format: 'pdf', href: item.pdfUrl },
    ...(item.texUrl ? [{ format: 'tex' as const, href: item.texUrl }] : []),
    { format: 'docx', href: item.docxUrl },
    { format: 'html', href: item.htmlUrl },
    { format: 'markdown', href: item.markdownUrl },
    { format: 'webp', href: item.thumbnailUrl },
  ],
  highlightedTemplate,
  currentTemplate,
}: GalleryDetailProps) {
  const messages = getGalleryDetailMessages(language)

  return (
    <main className="min-h-[900px] pb-24">
      <div className="bg-fd-background">
        <GalleryBreadcrumb
          item={item}
          language={language}
          target={target}
          currentTemplate={currentTemplate}
        />
      </div>

      <header className="bg-fd-background">
        <div className="fd-container border-b border-fd-border px-6 py-10 md:py-14">
          <div
            className={clsx([
              'flex',
              'flex-col',
              'gap-8',
              'lg:flex-row',
              'lg:items-end',
              'lg:justify-between',
            ])}
          >
            <ResumeMeta
              item={item}
              messages={messages}
              currentTemplate={currentTemplate}
              highlightedTemplate={highlightedTemplate}
            />
            <ResumeActions
              item={item}
              yamlContent={yamlContent}
              language={language}
              messages={messages}
              currentTemplate={currentTemplate}
            />
          </div>
        </div>
      </header>

      <div className="fd-container px-6 py-10 md:py-16">
        <PreviewTabs
          preview={preview}
          title={currentTemplate?.name ?? item.title}
          yamlContent={yamlContent}
          highlightedYaml={highlightedYaml}
          filename={`${item.id}-${item.language}.yml`}
          messages={messages}
          sidebar={
            <>
              <TemplateDetails
                item={item}
                messages={messages}
                currentTemplate={currentTemplate}
              />
              <DownloadFormatsCard downloads={downloads} messages={messages} />
            </>
          }
        />
      </div>

      {target?.type === 'position' && (
        <PositionLanguageAlternatives item={item} language={language} />
      )}

      <GalleryExploreMore language={language} />
    </main>
  )
}
