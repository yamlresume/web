'use client'

import { IconSpeakerphone } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import { defaultLanguage, getLocalizedUrl, type Language } from '@/i18n'

export function NewsChannel() {
  const params = useParams()
  const language = (params?.language || defaultLanguage) as Language

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
            <Link
              href="https://github.com/marketplace/actions/yamlresume"
              className="underline font-semibold"
              target="_blank"
              rel="noopener noreferrer"
            >
              YAMLResume GitHub Action
            </Link>{' '}
            is officially released! Automate your resume builds directly in your
            CI/CD pipelines. Check out the{' '}
            <Link
              href={getLocalizedUrl('/blog/yamlresume-action', language)}
              className="underline"
            >
              blog post
            </Link>{' '}
            for more details.
          </div>
        </div>
      </div>
    </div>
  )
}
