import { HomeLayout } from 'fumadocs-ui/layouts/home'
import type { ReactNode } from 'react'

import { defaultLanguage } from '@/i18n'
import { getNavigationOptions } from '@/lib'
import { Footer } from './components'

export default async function Layout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ language?: string }>
}) {
  const { language } = await params
  const currentLanguage = language || defaultLanguage

  const options = getNavigationOptions(currentLanguage)

  return (
    <HomeLayout {...options}>
      {children}
      <Footer />
    </HomeLayout>
  )
}
