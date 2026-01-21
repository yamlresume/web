'use client'

import clsx from 'clsx'

import { useTranslations } from '@/i18n'

export function BuyMeACoffeeSection() {
  const t = useTranslations('buyMeACoffee')

  return (
    <section className="w-full border-t border-fd-foreground/10 py-16">
      <div className="container mx-auto max-w-screen-lg">
        <div className="flex justify-center">
          <div
            className={clsx(
              'w-full',
              'max-w-5xl',
              'border',
              'border-fd-foreground/10',
              'bg-fd-card',
              'px-8',
              'py-12',
              'text-center',
              'shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
              'dark:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]'
            )}
          >
            <h2 className="text-3xl font-semibold text-fd-foreground">
              {t('title')}
            </h2>
            <p className="mx-auto mt-4 max-w-2xl text-base text-fd-muted-foreground">
              {t('description')}
            </p>
            <a
              href="https://buymeacoffee.com/xiaohanyu"
              target="_blank"
              rel="noopener noreferrer"
              className={clsx(
                'mt-8',
                'inline-flex',
                'items-center',
                'justify-center',
                'rounded-full',
                'border',
                'border-fd-foreground/30',
                'bg-fd-background',
                'px-6',
                'py-3',
                'text-base',
                'font-semibold',
                'text-fd-foreground',
                'transition-colors',
                'hover:bg-fd-muted'
              )}
            >
              {t('button')}
            </a>
          </div>
        </div>
      </div>
    </section>
  )
}
