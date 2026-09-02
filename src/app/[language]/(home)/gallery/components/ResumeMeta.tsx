import clsx from 'clsx'
import type { GalleryDetailMessages } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type { TemplateShowcase } from '@/lib/templates'
import { GalleryBadge } from './GalleryBadge'

interface ResumeMetaProps {
  item: GalleryItem
  messages: GalleryDetailMessages
  currentTemplate?: TemplateShowcase
  highlightedTemplate?: string
}

export function ResumeMeta({
  item,
  messages,
  currentTemplate,
  highlightedTemplate,
}: ResumeMetaProps) {
  const description = currentTemplate
    ? `${currentTemplate.description} ${messages.renderedFor
        .replace('{position}', item.title)
        .replace('{language}', item.languageLabel)}`
    : item.description

  return (
    <div className={clsx(['max-w-2xl'])}>
      <div
        className={clsx(['flex', 'flex-wrap', 'items-center', 'gap-2', 'mb-4'])}
      >
        {currentTemplate && (
          <GalleryBadge variant="mono">{currentTemplate.engine}</GalleryBadge>
        )}
        {currentTemplate && (
          <GalleryBadge variant="outline">{currentTemplate.style}</GalleryBadge>
        )}
        <GalleryBadge variant="primary">{item.category}</GalleryBadge>
        <GalleryBadge>{item.languageLabel}</GalleryBadge>
        {highlightedTemplate && !currentTemplate && (
          <GalleryBadge variant="mono">{highlightedTemplate}</GalleryBadge>
        )}
      </div>

      <h1 className="text-3xl md:text-5xl font-bold leading-tight mb-4">
        {currentTemplate?.name ?? item.title}
      </h1>

      <p className="text-lg text-fd-muted-foreground max-w-xl">{description}</p>
    </div>
  )
}
