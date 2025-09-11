'use client'

import { useParams } from 'next/navigation'
import { defaultLanguage } from './config'
import { getTranslations } from './translations'

export function useTranslations(namespace: string, locale?: string) {
  const params = useParams()
  const effectiveLocale =
    locale || (params?.locale as string) || defaultLanguage

  return getTranslations(effectiveLocale, namespace)
}
