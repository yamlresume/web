import { i18nConfig } from '@/i18n'
import { defineI18nUI } from 'fumadocs-ui/i18n'
import { RootProvider } from 'fumadocs-ui/provider'
import type { ReactNode } from 'react'

const { provider } = defineI18nUI(i18nConfig, {
  translations: {
    en: {
      displayName: 'English',
    },
    'zh-cn': {
      displayName: '简体中文',
    },
    'zh-tw': {
      displayName: '繁體中文',
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
  const currentLanguage = language || 'zh-cn' // Default to zh-cn for non-English languages

  return (
    <RootProvider i18n={provider(currentLanguage)}>{children}</RootProvider>
  )
}
