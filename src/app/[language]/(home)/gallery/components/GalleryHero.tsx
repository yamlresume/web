'use client'

import { IconBriefcase, IconLanguage, IconTemplate } from '@tabler/icons-react'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'
import { GalleryStatCard } from './GalleryStatCard'

interface GalleryHeroProps {
  templateCount: number
  languageCount: number
  positionCount: number
  language: Language
}

export function GalleryHero({
  templateCount,
  languageCount,
  positionCount,
  language,
}: GalleryHeroProps) {
  const copy = getGalleryMessages(language)

  const stats = [
    {
      value: `${templateCount}+`,
      label: copy.hero.templates,
      href: getLocalizedUrl('/docs/cli#templates', language),
      command: 'yamlresume templates list',
      icon: IconTemplate,
    },
    {
      value: `${languageCount}+`,
      label: copy.hero.languages,
      href: getLocalizedUrl('/docs/locale', language),
      command: 'yamlresume languages list',
      icon: IconLanguage,
    },
    {
      value: `${positionCount}+`,
      label: copy.hero.positions,
      href: getLocalizedUrl('/docs/ecosystem/samples', language),
      command: 'yamlresume samples list',
      icon: IconBriefcase,
    },
  ]

  return (
    <header className="border-b bg-fd-muted/30">
      <div className="fd-container px-6 py-16 md:py-24">
        <div className="max-w-3xl">
          <h1 className="text-4xl md:text-6xl font-bold leading-tight mb-6">
            {copy.hero.title}
          </h1>
          <p className="text-lg md:text-xl text-fd-muted-foreground mb-10">
            {copy.hero.description}
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mt-12">
          {stats.map((stat) => (
            <GalleryStatCard
              key={stat.label}
              value={stat.value}
              label={stat.label}
              href={stat.href}
              command={stat.command}
              icon={stat.icon}
            />
          ))}
        </div>
      </div>
    </header>
  )
}
