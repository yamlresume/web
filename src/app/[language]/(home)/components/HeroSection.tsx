'use client'

import { IconBook, IconBrandGithub } from '@tabler/icons-react'
import clsx from 'clsx'
import Image from 'next/image'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import Zoom from 'react-medium-image-zoom'

import resumeImage from '@/components/static/images/yamlresume-yaml-and-pdf.webp'
import {
  type Language,
  defaultLanguage,
  getLocalizedUrl,
  useTranslations,
} from '@/i18n'

function YAMLResumePDFSection() {
  return (
    <div
      className={clsx([
        'relative',
        'overflow-hidden',
        'border',
        'border-gray-400',
        'shadow-lg',
        'mt-2',
      ])}
      style={{
        borderRadius: '6px',
      }}
    >
      <Zoom zoomMargin={32}>
        <Image
          src={resumeImage}
          alt="YAMLResume preview showing YAML code and PDF output"
          priority
        />
      </Zoom>
    </div>
  )
}

export function HeroSection() {
  const params = useParams()
  const language = (params?.language as Language) || defaultLanguage
  const t = useTranslations('hero', language)

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
    <section className="container mx-auto pt-4">
      <div className="flex flex-col items-start gap-8">
        <div className="flex flex-col items-start gap-4">
          <p className="text-sm text-fd-muted-foreground2">
            {t.rich('tagline', {
              ppresume: (chunks) => (
                <Link
                  href="https://ppresume.com"
                  target="_blank"
                  className="underline"
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
          <Link
            href={getLocalizedUrl('/docs', language)}
            className={linkClasses}
          >
            <IconBook className="h-5 w-5" />
            {t('quickStart')}
          </Link>
          <Link
            href="https://github.com/yamlresume/yamlresume"
            target="_blank"
            className={linkClasses}
          >
            <IconBrandGithub className="h-5 w-5" />
            {t('checkGithub')}
          </Link>
        </div>
        <YAMLResumePDFSection />
      </div>
    </section>
  )
}
