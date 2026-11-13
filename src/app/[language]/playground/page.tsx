import type { Metadata } from 'next'
import { Suspense } from 'react'
import {
  getLocalizedUrl,
  getTranslations,
  type Language,
  languages,
} from '@/i18n'
import { PlaygroundBody, PlaygroundHeader } from './components'

export const revalidate = false

// TODO: write test cases
export default async function PlaygroundPage(props: {
  params: Promise<{ language: string }>
}) {
  const params = await props.params
  const { language } = params
  return (
    <div className="h-screen w-screen flex flex-col bg-neutral-900 text-neutral-100 overflow-hidden">
      <PlaygroundHeader language={language as Language} />
      <Suspense fallback={<div className="flex-1" />}>
        <PlaygroundBody />
      </Suspense>
    </div>
  )
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ language: string }>
}): Promise<Metadata> {
  const { language } = await params
  const t = getTranslations(language, 'playground')

  // Parameterized playground URLs (`?sample=…&locale=…`) canonicalize to the
  // bare path so sample permutations do not compete with the tool page.
  const languagesAlternates: Record<string, string> = {}
  for (const lang of languages) {
    languagesAlternates[lang] = getLocalizedUrl('/playground', lang)
  }

  return {
    title: t('title'),
    description: t('description'),
    alternates: {
      canonical: getLocalizedUrl('/playground', language as Language),
      languages: languagesAlternates,
    },
  }
}
