import './global.css'
import { Analytics as VercelAnalytics } from '@vercel/analytics/next'
import { defineI18nUI } from 'fumadocs-ui/i18n'
import { RootProvider } from 'fumadocs-ui/provider'
import type { Metadata } from 'next'
import type { ReactNode } from 'react'
import { Analytics } from '@/components'
import { siteConfig } from '@/config/site'
import { i18nConfig, languages } from '@/i18n/config'

export const metadata: Metadata = {
  metadataBase: new URL(siteConfig.url),
  title: {
    default: siteConfig.name,
    template: `%s - ${siteConfig.name}`,
  },
  description: siteConfig.description,
  keywords: siteConfig.keywords,
  authors: siteConfig.authors,
  creator: siteConfig.creator.name,
  openGraph: {
    type: 'website',
    locale: 'en_US',
    url: siteConfig.url,
    title: siteConfig.name,
    description: siteConfig.description,
    siteName: siteConfig.name,
    images: [
      {
        url: siteConfig.ogImage,
        width: 1200,
        height: 630,
        alt: siteConfig.name,
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    title: siteConfig.name,
    description: siteConfig.description,
    images: [siteConfig.ogImage],
    creator: siteConfig.creator.twitter,
  },
  icons: {
    icon: [
      {
        url: '/static/favicons/favicon-96x96.png',
        type: 'image/png',
        sizes: '96x96',
      },
      {
        url: '/static/favicons/favicon.svg',
        type: 'image/svg+xml',
      },
    ],
    shortcut: {
      rel: 'shortcut icon',
      url: '/static/favicons/favicon.ico',
    },
    apple: {
      rel: 'apple-touch-icon',
      url: '/static/favicons/apple-touch-icon.png',
      sizes: '180x180',
    },
  },
  appleWebApp: {
    title: 'YResume',
  },
  manifest: '/manifest.webmanifest',
}

const { provider } = defineI18nUI(i18nConfig, {
  translations: {
    en: {
      displayName: 'English',
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
  },
})

export function generateStaticParams() {
  return languages.map((language) => ({ language }))
}

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head />
      <body className="flex flex-col min-h-screen">
        <RootProvider i18n={provider('en')}>
          <Analytics />
          <VercelAnalytics />
          {children}
        </RootProvider>
      </body>
    </html>
  )
}
