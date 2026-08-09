'use client'

import { useEffect } from 'react'

export function HtmlLang({ language }: { language: string }) {
  useEffect(() => {
    document.documentElement.lang = language
  }, [language])

  return null
}
