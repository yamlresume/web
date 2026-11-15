import { RootProvider } from 'fumadocs-ui/provider/next'
import { notFound } from 'next/navigation'
import type { ReactNode } from 'react'
import { HtmlLang } from '@/components'
import { defaultLanguage, type Language, languages } from '@/i18n'
import { provider } from '@/i18n/ui'

export const dynamicParams = false

export function generateStaticParams() {
  return languages.map((language) => ({ language }))
}

export default async function LanguageLayout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ language?: string }>
}) {
  const { language } = await params
  const currentLanguage = (language || defaultLanguage) as Language

  if (!languages.includes(currentLanguage)) {
    notFound()
  }

  return (
    <RootProvider i18n={provider(currentLanguage)}>
      <HtmlLang language={currentLanguage} />
      {children}
    </RootProvider>
  )
}
