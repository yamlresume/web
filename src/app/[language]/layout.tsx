import { defineI18nUI } from 'fumadocs-ui/i18n'
import { RootProvider } from 'fumadocs-ui/provider'
import type { ReactNode } from 'react'
import { defaultLanguage, i18nConfig } from '@/i18n'

const { provider } = defineI18nUI(i18nConfig, {
  translations: {
    en: {
      displayName: 'English',
    },
    es: {
      displayName: 'Español',
    },
    fr: {
      displayName: 'Français',
    },
    'zh-cn': {
      displayName: '简体中文',
    },
    'zh-tw': {
      displayName: '繁體中文',
    },
    ja: {
      displayName: '日本語',
    },
  },
})

export default async function LanguageLayout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ language?: string }>
}) {
  const { language } = await params
  const currentLanguage = language || defaultLanguage

  return (
    <RootProvider i18n={provider(currentLanguage)}>{children}</RootProvider>
  )
}
