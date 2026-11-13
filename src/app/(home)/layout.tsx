import { HomeLayout } from 'fumadocs-ui/layouts/home'
import type { ReactNode } from 'react'

import { Footer } from '@/app/[language]/(home)/components/Footer'
import { HtmlLang } from '@/components'
import { defaultLanguage } from '@/i18n'
import { getNavigationOptions } from '@/lib'

export default function Layout({ children }: { children: ReactNode }) {
  const options = {
    ...getNavigationOptions(defaultLanguage),
    i18n: false,
  }

  return (
    <HomeLayout {...options}>
      <HtmlLang language={defaultLanguage} />
      {children}
      <Footer language={defaultLanguage} />
    </HomeLayout>
  )
}
