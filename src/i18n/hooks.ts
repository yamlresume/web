'use client'

import { useParams } from 'next/navigation'
import { defaultLanguage } from './config'
import { getTranslations } from './translations'

export function useTranslations(namespace: string) {
  const params = useParams()
  const language = (params?.language as string) || defaultLanguage

  return getTranslations(language, namespace)
}
