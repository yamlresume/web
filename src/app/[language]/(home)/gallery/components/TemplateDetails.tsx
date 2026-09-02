import { IconInfoCircle } from '@tabler/icons-react'
import clsx from 'clsx'
import type { GalleryDetailMessages } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type { TemplateShowcase } from '@/lib/templates'

interface TemplateDetailsProps {
  item: GalleryItem
  messages: GalleryDetailMessages
  currentTemplate?: TemplateShowcase
}

export function TemplateDetails({
  item,
  messages,
  currentTemplate,
}: TemplateDetailsProps) {
  const details: { id: string; label: string; value: string }[] = [
    {
      id: 'engine',
      label: messages.fields.engine,
      value: currentTemplate?.engine ?? '—',
    },
    {
      id: 'template',
      label: messages.fields.template,
      value: currentTemplate?.name ?? item.title,
    },
    {
      id: 'style',
      label: messages.fields.style,
      value: currentTemplate?.style ?? '—',
    },
    {
      id: 'language',
      label: messages.fields.language,
      value: item.languageLabel,
    },
    {
      id: 'position',
      label: messages.fields.position,
      value: item.position,
    },
  ]

  return (
    <section
      className={clsx([
        'relative',
        'flex',
        'flex-col',
        'overflow-hidden',
        'border',
        'border-fd-border',
        'bg-fd-card',
        'p-6',
        'transition-all',
        'duration-300',
        'hover:border-fd-foreground/20',
        'shadow-[6px_6px_0px_0px_rgba(0,0,0,0.08)]',
        'dark:shadow-[6px_6px_0px_0px_rgba(255,255,255,0.08)]',
        'hover:shadow-[8px_8px_0px_0px_rgba(0,0,0,0.12)]',
        'dark:hover:shadow-[8px_8px_0px_0px_rgba(255,255,255,0.12)]',
        'hover:-translate-x-0.5',
        'hover:-translate-y-0.5',
      ])}
    >
      <h2 className="mb-4 flex items-center gap-2 font-bold">
        <IconInfoCircle aria-hidden="true" size={18} />
        {messages.templateInfo}
      </h2>
      <dl className="space-y-3 text-sm">
        {details.map(({ id, label, value }) => (
          <div key={id} className="flex justify-between gap-4">
            <dt className="text-fd-muted-foreground">{label}</dt>
            <dd
              className={clsx([
                'text-right',
                'font-medium',
                id === 'engine' && 'font-mono',
              ])}
            >
              {value}
            </dd>
          </div>
        ))}
      </dl>
    </section>
  )
}
