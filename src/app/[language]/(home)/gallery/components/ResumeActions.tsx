'use client'

import clsx from 'clsx'
import type { GalleryDetailMessages, Language } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type { TemplateShowcase } from '@/lib/templates'
import { OpenInPlaygroundButton } from './OpenInPlaygroundButton'
import { YamlDownloadButton } from './YamlDownloadButton'

interface ResumeActionsProps {
  item: GalleryItem
  yamlContent?: string
  language: Language
  messages: GalleryDetailMessages
  currentTemplate?: TemplateShowcase
}

export function ResumeActions({
  item,
  yamlContent,
  language,
  messages,
  currentTemplate,
}: ResumeActionsProps) {
  return (
    <div className={clsx(['flex', 'flex-wrap', 'items-center', 'gap-3'])}>
      <OpenInPlaygroundButton
        sampleId={item.id}
        locale={item.language}
        language={language}
        label={messages.actions.openInPlayground}
        engine={currentTemplate?.engine}
        template={currentTemplate?.template}
      />
      <YamlDownloadButton
        label={messages.actions.downloadYaml}
        yamlContent={yamlContent}
        filename={`${item.id}-${item.language}.yml`}
      />
    </div>
  )
}
