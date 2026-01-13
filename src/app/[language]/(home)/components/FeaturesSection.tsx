'use client'

import {
  IconBrandGit,
  IconCode,
  IconFileDownload,
  IconLanguage,
  IconLayoutBoard,
  IconMarkdown,
  IconPalette,
  IconTerminal2,
  IconTex,
} from '@tabler/icons-react'

import clsx from 'clsx'
import { useParams } from 'next/navigation'
import { getLocalizedUrl, type Language, useTranslations } from '@/i18n'
import {
  AnimatedResumeDemo,
  CliTerminalDemo,
  CodeSnippetDemo,
  FeatureCard,
  type FeatureCardProps,
  InfiniteFlexibilityDemo,
  LanguageSwitcherDemo,
  MultiOutputsDemo,
  RichTextDemo,
  SchemaTerminalDemo,
  TemplatesDemo,
} from './features'
import { Section } from './Section'

export function FeaturesSection() {
  const t = useTranslations('features')
  const params = useParams()
  const lang = (params?.language as Language) || 'en'
  const iconSize = 20

  const features: FeatureCardProps[] = [
    {
      id: 'latexTypesetting',
      icon: <IconTex size={iconSize} />,
      title: t('latexTypesetting.title'),
      description: t('latexTypesetting.description'),
      className: 'md:col-span-2 lg:col-span-4',
      demo: <AnimatedResumeDemo />,
      href: getLocalizedUrl('/docs/layouts/latex', lang),
    },
    {
      id: 'plainText',
      icon: <IconBrandGit size={iconSize} />,
      title: t('plainText.title'),
      description: t('plainText.description'),
      className: 'col-span-1 lg:col-span-2',
      demo: (
        <CodeSnippetDemo
          language="Git"
          code={`commit 8a67810
Author: You <you@dev.io>
Date: Dec 30

feat: update work experience

--- a/resume.yml
+++ b/resume.yml
   location:
     address: 123 Main Street
-    city: Sacramento
+    city: San Francisco
     region: California
`}
        />
      ),
      href: getLocalizedUrl('/docs/content', lang),
    },
    {
      id: 'cli',
      icon: <IconTerminal2 size={iconSize} />,
      title: t('cli.title'),
      description: t('cli.description'),
      className: 'col-span-1 lg:col-span-3',
      demo: <CliTerminalDemo className="h-full min-h-[240px]" />,
      href: getLocalizedUrl('/docs/cli', lang),
    },
    {
      id: 'schema',
      icon: <IconCode size={iconSize} />,
      title: t('schema.title'),
      description: t('schema.description'),
      className: 'col-span-1 lg:col-span-3',
      demo: <SchemaTerminalDemo className="h-full min-h-[240px]" />,
      href: getLocalizedUrl('/docs/compiler/schema', lang),
    },
    {
      id: 'flexibleSection',
      icon: <IconLayoutBoard size={iconSize} />,
      title: t('flexibleSection.title'),
      description: t('flexibleSection.description'),
      className: 'col-span-1 lg:col-span-2',
      demo: <InfiniteFlexibilityDemo />,
      href: getLocalizedUrl('/docs/layouts/sections', lang),
    },
    {
      id: 'richText',
      icon: <IconMarkdown size={iconSize} />,
      title: t('richText.title'),
      description: t('richText.description'),
      className: 'md:col-span-2 lg:col-span-4',
      demo: <RichTextDemo />,
      href: getLocalizedUrl('/docs/content/rich-text', lang),
    },
    {
      id: 'multilingual',
      icon: <IconLanguage size={iconSize} />,
      title: t('multilingual.title'),
      description: t('multilingual.description'),
      className: 'col-span-1 lg:col-span-2 order-1 lg:order-none',
      demo: <LanguageSwitcherDemo />,
      href: getLocalizedUrl('/docs/locale', lang),
    },
    {
      id: 'templates',
      icon: <IconPalette size={iconSize} />,
      title: t('templates.title'),
      description: t('templates.description'),
      className:
        'md:col-span-2 lg:col-span-4 md:row-span-2 order-3 lg:order-none',
      demo: <TemplatesDemo />,
      href: getLocalizedUrl('/docs/layouts/latex/templates', lang),
    },
    {
      id: 'outputs',
      icon: <IconFileDownload size={iconSize} />,
      title: t('outputs.title'),
      description: t('outputs.description'),
      className: 'col-span-1 lg:col-span-2 order-2 lg:order-none',
      demo: <MultiOutputsDemo />,
      href: getLocalizedUrl('/docs/outputs', lang),
    },
  ]

  return (
    <Section title={t('sectionTitle')}>
      <div
        className={clsx(
          'grid',
          'grid-cols-1',
          'gap-4',
          'md:gap-6',
          'md:grid-cols-2',
          'lg:grid-cols-6'
        )}
      >
        {features.map((feature) => (
          <FeatureCard key={feature.id} {...feature} />
        ))}
      </div>
    </Section>
  )
}
