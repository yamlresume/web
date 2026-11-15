import { createTokenizer as createJapaneseTokenizer } from '@orama/tokenizers/japanese'
import { createTokenizer as createMandarinTokenizer } from '@orama/tokenizers/mandarin'
import { createI18nSearchAPI } from 'fumadocs-core/search/server'
import { i18nConfig, languages } from '@/i18n'
import { getLocalizedSources } from './source'

const mandarin = {
  components: {
    tokenizer: createMandarinTokenizer(),
  },
  search: {
    threshold: 0,
    tolerance: 0,
  },
}

const japanese = {
  components: {
    tokenizer: createJapaneseTokenizer(),
  },
  search: {
    threshold: 0,
    tolerance: 0,
  },
}

export const searchAPI = createI18nSearchAPI('advanced', {
  i18n: i18nConfig,
  localeMap: {
    en: { language: 'english' },
    es: { language: 'spanish' },
    fr: { language: 'french' },
    pt: { language: 'portuguese' },
    ja: japanese,
    'zh-cn': mandarin,
    'zh-tw': mandarin,
    id: { language: 'indonesian' },
  },
  indexes: languages
    .flatMap((language) => getLocalizedSources(language).docs.getLanguages())
    .flatMap(({ language, pages }) =>
      pages.map((page) => ({
        title: page.data.title,
        description: page.data.description,
        structuredData: page.data.structuredData,
        id: page.url,
        url: page.url,
        locale: language,
      }))
    ),
})
