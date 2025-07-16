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
            <Link
              href="https://yamlresume.dev/blog/yamlresume-compiler"
              className="underline"
            >
              YAMLResume v0.5
            </Link>
            &nbsp;is now available! A
            <Link href="/docs/compiler" className="underline">
              &nbsp;Resume Compiler
            </Link>{' '}
            that brings the power of static analysis to your resume.
          </div>
        </div>
      </div>
    </div>
  )
}
