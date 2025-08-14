import { siteConfig } from '@/config/site'
import { RootProvider } from 'fumadocs-ui/provider'
import { NextIntlClientProvider } from 'next-intl'
import { getMessages } from 'next-intl/server'
import type { Metadata } from 'next'
import type { ReactNode } from 'react'
import { Analytics } from '../components'

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
  manifest: '/site.webmanifest',
}

export default async function LocaleLayout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ locale: string }>
}) {
  const { locale } = await params
  const messages = await getMessages()

  return (
    <NextIntlClientProvider messages={messages}>
      <Analytics />
      <RootProvider>{children}</RootProvider>
    </NextIntlClientProvider>
  )
}