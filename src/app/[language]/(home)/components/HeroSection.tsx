'use client'

import { IconBook, IconDeviceDesktop } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import { useId, useState } from 'react'

import { WindowFrame } from '@/app/[language]/(home)/components/features/WindowFrame'
import { PlaygroundBody } from '@/app/playground/components'

import { defaultLanguage, getLocalizedUrl, useTranslations } from '@/i18n'

const DemoArrow = () => {
  const id = useId()
  return (
    <svg
      className="absolute -left-8 top-8 hidden md:block text-fd-muted-foreground4 pointer-events-none"
      width="100"
      height="100"
      viewBox="0 0 100 100"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-hidden="true"
    >
      <title>Demo Arrow</title>
      <path
        d="M 50 0 C 20 20 0 60 20 90"
        stroke="currentColor"
        strokeWidth="2"
        fill="none"
        markerEnd={`url(#${id})`}
      />
      <defs>
        <marker
          id={id}
          markerWidth="10"
          markerHeight="7"
          refX="9"
          refY="3.5"
          orient="auto"
        >
          <polygon points="0 0, 10 3.5, 0 7" fill="currentColor" />
        </marker>
      </defs>
    </svg>
  )
}

export function HeroSection() {
  const params = useParams()
  const language = (params?.language as string) || defaultLanguage
  const t = useTranslations('hero')
  const [isPlaygroundHovered, setIsPlaygroundHovered] = useState(false)

  const linkClasses = clsx([
    'border',
    'border-gray-400',
    'font-medium',
    'py-2',
    'px-4',
    'rounded-none',
    'transition-colors',
    'flex',
    'items-center',
    'gap-2',
    'shadow-[4px_4px_0px_0px_rgba(0,0,0,0.9)]',
    'dark:shadow-[4px_4px_0px_0px_rgba(255,255,255,0.9)]',
    'hover:shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
    'dark:hover:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]',
    'hover:translate-x-[2px]',
    'hover:translate-y-[2px]',
  ])

  return (
    <section className="container mx-auto pt-4 pb-16">
      <div className="flex flex-col items-start gap-8">
        <div className="flex flex-col items-start gap-4">
          <p className="text-sm text-fd-muted-foreground2">
            {t.rich('tagline', {
              ppresume: (chunks) => (
                <Link
                  href="https://ppresume.com"
                  target="_blank"
                  className="underline"
                  key="ppresume"
                >
                  {chunks}
                </Link>
              ),
            })}
          </p>
          <h1 className="text-4xl md:text-5xl font-bold">{t('title')}</h1>
          <p className="text-xl text-fd-muted-foreground8">
            {t('description')}
          </p>
        </div>
        <div className="flex flex-wrap items-start justify-center gap-4">
          <div className="relative">
            <DemoArrow />
            <Link
              href={getLocalizedUrl('/playground', language)}
              className={linkClasses}
              onMouseEnter={() => setIsPlaygroundHovered(true)}
              onMouseLeave={() => setIsPlaygroundHovered(false)}
            >
              <IconDeviceDesktop className="h-5 w-5" />
              {t('Playground')}
            </Link>
          </div>
          <Link
            href={getLocalizedUrl('/docs', language)}
            className={linkClasses}
          >
            <IconBook className="h-5 w-5" />
            {t('quickStart')}
          </Link>
        </div>
        <div
          className={clsx(
            'w-full transition-all duration-300 ease-in-out transform',
            isPlaygroundHovered ? 'scale-[1.01] ring-1 ring-primary/20' : ''
          )}
        >
          <WindowFrame contentClassName="h-[760px]" className="rounded-xl">
            <PlaygroundBody />
          </WindowFrame>
        </div>
      </div>
    </section>
  )
}
