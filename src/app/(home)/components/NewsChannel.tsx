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
            <Link href="/blog/dev-mode" className="underline">
              YAMLResume v0.7
            </Link>{' '}
            is released with the new{' '}
            <Link href="/docs/cli#dev" className="underline">
              dev mode
            </Link>
            . Check out the{' '}
            <Link href="https://youtu.be/xytlzedEQ_w" className="underline">
              youtube demo
            </Link>{' '}
            for more details.
          </div>
        </div>
      </div>
    </div>
  )
}
