import { defineI18n } from 'fumadocs-core/i18n'

export const defaultLanguage = 'en' as const
export const languages = [
  'en',
  'es',
  'fr',
  'pt',
  'ja',
  'zh-cn',
  'zh-tw',
  'id',
] as const

export type Language = (typeof languages)[number]

export const languageNames: Record<Language, string> = {
  en: 'English',
  es: 'Español',
  fr: 'Français',
  pt: 'Português',
  ja: '日本語',
  'zh-cn': '简体中文',
  'zh-tw': '繁體中文',
  id: 'Bahasa Indonesia',
}

export const i18nConfig = defineI18n({
  defaultLanguage,
  languages: [...languages],
  hideLocale: 'default-locale',
  fallbackLanguage: defaultLanguage,
})
