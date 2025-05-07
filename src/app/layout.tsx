import './global.css'
import { RootProvider } from 'fumadocs-ui/provider'
import type { Metadata } from 'next'
import type { ReactNode } from 'react'

export const metadata: Metadata = {
  title: 'YAMLResume',
  description: [
    'YAMLResume allows you to create and version control your resumes',
    'using YAML and generate pixel perfect PDFs',
    'with professional layout and typesetting in a breeze.',
  ].join(' '),
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
}

export default function Layout({ children }: { children: ReactNode }) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className="flex flex-col min-h-screen">
        <RootProvider>{children}</RootProvider>
      </body>
    </html>
  )
}
