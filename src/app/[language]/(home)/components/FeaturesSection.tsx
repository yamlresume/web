'use client'

import {
  IconBoxMargin,
  IconBrandGit,
  IconLanguage,
  IconLayoutBoard,
  IconMarkdown,
  IconTex,
} from '@tabler/icons-react'
import clsx from 'clsx'
import { useParams } from 'next/navigation'

import { type Language, defaultLanguage, useTranslations } from '@/i18n'
interface FeatureCardProps {
  title: string
  description: string
  icon: React.ReactNode
}

function FeatureCard({ title, description, icon }: FeatureCardProps) {
  return (
    <div
      className={clsx([
        'p-8',
        'border-b',
        'border-r',
        'transition-all',
        'duration-300',
        'hover:bg-white',
        'dark:hover:bg-black',
        'hover:scale-[1.02]',
        'cursor-pointer',
      ])}
    >
      <div className="flex items-center gap-3 mb-3">
        <div
          className={clsx([
            'text-gray-700',
            'dark:text-gray-300',
            'tduration-300',
            'group-hover:scale-110',
          ])}
        >
          {icon}
        </div>
        <h3 className=" text-xl font-semibold">{title}</h3>
      </div>
      <p className="text-fd-muted-foreground8">{description}</p>
    </div>
  )
}

export function FeaturesSection() {
  const params = useParams()
  const language = (params?.language as Language) || defaultLanguage
  const t = useTranslations('features', language)

  return (
    <section className="container py-4">
      <div
        className={clsx([
          'grid',
          'grid-cols-1',
          'md:grid-cols-2',
          'lg:grid-cols-3',
          'border-l',
          'border-t',
        ])}
      >
        <FeatureCard
          icon={<IconBrandGit className="h-6 w-6" />}
          title={t('plainText.title')}
          description={t('plainText.description')}
        />
        <FeatureCard
          icon={<IconMarkdown className="h-6 w-6" />}
          title={t('richText.title')}
          description={t('richText.description')}
        />
        <FeatureCard
          icon={<IconLayoutBoard className="h-6 w-6" />}
          title={t('flexibleSection.title')}
          description={t('flexibleSection.description')}
        />
        <FeatureCard
          icon={<IconTex className="h-6 w-6" />}
          title={t('latexTypesetting.title')}
          description={t('latexTypesetting.description')}
        />
        <FeatureCard
          icon={<IconBoxMargin className="h-6 w-6" />}
          title={t('customizable.title')}
          description={t('customizable.description')}
        />
        <FeatureCard
          icon={<IconLanguage className="h-6 w-6" />}
          title={t('multilingual.title')}
          description={t('multilingual.description')}
        />
      </div>
    </section>
  )
}
