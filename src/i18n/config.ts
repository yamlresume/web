import { defineI18n } from 'fumadocs-core/i18n'

export const defaultLanguage = 'en' as const
export const languages = ['en', 'fr', 'zh-cn', 'zh-tw']

export type Language = (typeof languages)[number]

export const languageNames: Record<Language, string> = {
  en: 'English',
  fr: 'Français',
  'zh-cn': '简体中文',
  'zh-tw': '繁體中文',
}

export const i18nConfig = defineI18n({
  defaultLanguage,
  languages,
  hideLocale: 'default-locale',
  fallbackLanguage: defaultLanguage,
})
