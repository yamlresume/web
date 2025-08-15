'use client'

import { locales, localeNames, type Locale } from '@/i18n/config'
import { useLocale } from 'next-intl'
import { usePathname, useRouter } from 'next/navigation'
import { useTransition } from 'react'

export function LocaleSelect() {
  const locale = useLocale() as Locale
  const router = useRouter()
  const pathname = usePathname()
  const [isPending, startTransition] = useTransition()

  const handleLocaleChange = (newLocale: string) => {
    startTransition(() => {
      // Get the path without any locale prefix
      let pathWithoutLocale = pathname
      if (locale !== 'en') {
        // Current locale is not default, remove it from path
        pathWithoutLocale = pathname.replace(`/${locale}`, '') || '/'
      }
      
      // Build new path with appropriate locale prefix
      const newPath = newLocale === 'en' ? pathWithoutLocale : `/${newLocale}${pathWithoutLocale}`
      router.push(newPath)
    })
  }

  return (
    <select
      value={locale}
      onChange={(e) => handleLocaleChange(e.target.value)}
      disabled={isPending}
      className="bg-fd-background border border-fd-border rounded px-2 py-1 text-sm"
    >
      {locales.map((loc) => (
        <option key={loc} value={loc}>
          {localeNames[loc]}
        </option>
      ))}
    </select>
  )
}