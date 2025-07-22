import clsx from 'clsx'
import Link from 'next/link'

import { IconSpeakerphone } from '@tabler/icons-react'

export function NewsChannel() {
  return (
    <div
      className={clsx(
        'bg-fd-secondary',
        'border-b',
        'border-fd-accent',
        'relative',
        'top-14',
        'h-12',
        'flex',
        'items-center',
        'justify-center'
      )}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center gap-2 py-3">
          <IconSpeakerphone size={20} stroke={1.5} />
          <div className="text-sm text-fd-foreground">
            <Link href="/blog/section-customization" className="underline">
              YAMLResume v0.6
            </Link>{' '}
            is released with the long awaited section customization:{' '}
            <Link href="/docs/layout/sections/aliases" className="underline">
              section aliases
            </Link>{' '}
            and{' '}
            <Link href="/docs/layout/sections/reorder" className="underline">
              section reorder
            </Link>
            .
          </div>
        </div>
      </div>
    </div>
  )
}
