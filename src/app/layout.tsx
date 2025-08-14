import './global.css'
import { locales } from '@/i18n/config'
import type { ReactNode } from 'react'

export function generateStaticParams() {
  return locales.map((locale) => ({ locale }))
}

export default async function RootLayout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ locale: string }>
}) {
  const { locale } = await params
  return (
    <html lang={locale} suppressHydrationWarning>
      <head />
      <body className="flex flex-col min-h-screen">
        {children}
      </body>
    </html>
  )
}
