'use client'

import { IconSpeakerphone } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import { getLocalizedUrl } from '@/i18n'

export function NewsChannel() {
  const params = useParams()
  const language = (params?.language as string) || 'en'

  return (
    <div
      className={clsx(
        'bg-fd-secondary',
        'border-b',
        'border-fd-accent',
        'py-1',
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
            YAMLResume v0.9 is released with the new{' '}
            <Link
              href={getLocalizedUrl('/blog/html-output', language)}
              className="underline"
            >
              HTML output
            </Link>
            . Check out the{' '}
            <Link href="https://asciinema.org/a/763505" className="underline">
              demo
            </Link>{' '}
            for more details.
          </div>
        </div>
      </div>
    </div>
  )
}
