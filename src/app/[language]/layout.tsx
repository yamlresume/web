import { RootProvider } from 'fumadocs-ui/provider/next'
import type { ReactNode } from 'react'
import { HtmlLang } from '@/components'
import { defaultLanguage } from '@/i18n'
import { provider } from '@/i18n/ui'

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
    <RootProvider i18n={provider(currentLanguage)}>
      <HtmlLang language={currentLanguage} />
      {children}
    </RootProvider>
  )
}
