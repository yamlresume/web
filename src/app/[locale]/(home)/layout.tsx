import { HomeLayout } from 'fumadocs-ui/layouts/home'
import { getTranslations } from 'next-intl/server'
import type { ReactNode } from 'react'
import { LocaleSelect } from '@/components/locale-select'
import { Logo } from '../components'
import { Footer } from './components'

export default async function Layout({ 
  children,
  params 
}: { 
  children: ReactNode
  params: Promise<{ locale: string }>
}) {
  const { locale } = await params
  const t = await getTranslations('navbar')
  
  // Generate locale-aware URLs
  const getLocalizedUrl = (path: string) => {
    return locale === 'en' ? path : `/${locale}${path}`
  }
  
  const baseOptions = {
    nav: {
      title: (
        <>
          <Logo width="24" height="24" className="dark:invert" />
          YAMLResume
        </>
      ),
    },
    themeSwitch: {
      mode: 'light-dark-system' as const,
    },
    links: [
      {
        text: t('documentation'),
        url: getLocalizedUrl('/docs'),
        active: 'nested-url' as const,
      },
      {
        text: t('blog'),
        url: getLocalizedUrl('/blog'),
        active: 'nested-url' as const,
      },
      {
        text: t('chat'),
        url: 'https://discord.gg/9SyT7mVV4K',
      },
      {
        text: t('discussions'),
        url: 'https://github.com/yamlresume/yamlresume/discussions',
      },
    ],
    githubUrl: 'https://github.com/yamlresume/yamlresume',
  }
  
  return (
    <>
      <div className="fixed top-4 right-4 z-50">
        <LocaleSelect />
      </div>
      <HomeLayout {...baseOptions}>
        {children}
        <Footer />
      </HomeLayout>
    </>
  )
}
