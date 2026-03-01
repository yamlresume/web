import { DocsLayout } from 'fumadocs-ui/layouts/docs'
import type { ReactNode } from 'react'
import { defaultLanguage, type Language } from '@/i18n'
import { getLocalizedSources, getNavigationOptions } from '@/lib'

export default async function Layout({
  children,
  params,
}: {
  children: ReactNode
  params: Promise<{ language?: string }>
}) {
  const { language } = await params
  const currentLanguage = (language || defaultLanguage) as Language
  const { docs } = getLocalizedSources(currentLanguage)

  const options = getNavigationOptions(currentLanguage)

  // Handle the pageTree type - it might be Root or Record<string, Root>
  const pageTree =
    typeof docs.pageTree === 'object' && 'name' in docs.pageTree
      ? docs.pageTree
      : docs.pageTree[currentLanguage] || docs.pageTree

  return (
    // @ts-expect-error
    <DocsLayout tree={pageTree} {...options}>
      {children}
    </DocsLayout>
  )
}
