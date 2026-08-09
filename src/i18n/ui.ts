import { defineI18nUI } from 'fumadocs-ui/i18n'

import { i18nConfig } from './config'

export const { provider } = defineI18nUI(i18nConfig, {
  en: {
    displayName: 'English',
  },
  es: {
    displayName: 'Español',
  },
  fr: {
    displayName: 'Français',
  },
  id: {
    displayName: 'Bahasa Indonesia',
  },
  pt: {
    displayName: 'Português',
  },
  ja: {
    displayName: '日本語',
  },
  'zh-cn': {
    displayName: '简体中文',
  },
  'zh-tw': {
    displayName: '繁體中文',
  },
})
