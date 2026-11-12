'use client'

import { IconExternalLink } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import {
  getGalleryDetailMessages,
  getLocalizedUrl,
  type Language,
} from '@/i18n'

interface OpenInPlaygroundButtonProps {
  sampleId: string
  locale: string
  language: Language
  label?: string
  engine?: string
  template?: string
}

export function OpenInPlaygroundButton({
  sampleId,
  locale,
  language,
  label,
  engine,
  template,
}: OpenInPlaygroundButtonProps) {
  const messages = getGalleryDetailMessages(language)
  const searchParams = new URLSearchParams({ sample: sampleId, locale })

  if (engine) {
    searchParams.set('engine', engine)
  }
  if (template) {
    searchParams.set('template', template)
  }

  const href = `${getLocalizedUrl('/playground', language)}?${searchParams}`

  return (
    <Link
      href={href}
      className={clsx([
        'inline-flex',
        'items-center',
        'gap-2',
        'rounded-lg',
        'border',
        'bg-fd-primary',
        'px-6',
        'py-3',
        'text-sm',
        'font-semibold',
        'text-fd-primary-foreground',
        'transition-all',
        'shadow-[4px_4px_0px_0px_rgba(15,23,42,0.9)]',
        'hover:shadow-[2px_2px_0px_0px_rgba(15,23,42,0.9)]',
        'hover:translate-x-0.5',
        'hover:translate-y-0.5',
        'hover:bg-fd-primary/90',
      ])}
    >
      <IconExternalLink size={16} />
      {label ?? messages.actions.openInPlayground}
    </Link>
  )
}
