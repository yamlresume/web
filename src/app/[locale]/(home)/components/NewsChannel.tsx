'use client'

import clsx from 'clsx'
import Link from 'next/link'
import { useLocale } from 'next-intl'

import { IconSpeakerphone } from '@tabler/icons-react'

export function NewsChannel() {
  const locale = useLocale()
  
  // Generate locale-aware URLs
  const getLocalizedUrl = (path: string) => {
    return locale === 'en' ? path : `/${locale}${path}`
  }
  return (
    <div
      className={clsx(
        'bg-fd-secondary',
        'border-b',
        'border-fd-accent',
        'py-1',
        'relative',
        'top-14',
        'px-4',
        'flex',
        'items-center',
        'justify-center'
      )}
    >
      <div className="max-w-7xl mx-auto px-4">
        <div className="flex items-center gap-2 py-3">
          <IconSpeakerphone size={20} stroke={1.5} />
          <div className="text-sm text-fd-foreground">
            <Link href={getLocalizedUrl('/blog/section-customization')} className="underline">
              YAMLResume v0.6
            </Link>{' '}
            is released with the long awaited section customization:{' '}
            <Link href={getLocalizedUrl('/docs/layout/sections/aliases')} className="underline">
              section aliases
            </Link>{' '}
            and{' '}
            <Link href={getLocalizedUrl('/docs/layout/sections/reorder')} className="underline">
              section reorder
            </Link>
            .
          </div>
        </div>
      </div>
    </div>
  )
}
