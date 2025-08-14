export const defaultLocale = 'en' as const
export const locales = ['en', 'zh-CN', 'zh-TW'] as const

export type Locale = (typeof locales)[number]

export const localeNames: Record<Locale, string> = {
  en: 'English',
  'zh-CN': '简体中文',
  'zh-TW': '繁體中文',
}