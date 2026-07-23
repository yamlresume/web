import { createTokenizer as createJapaneseTokenizer } from '@orama/tokenizers/japanese'
import { createTokenizer as createMandarinTokenizer } from '@orama/tokenizers/mandarin'
import { createI18nSearchAPI } from 'fumadocs-core/search/server'
import { i18nConfig } from '@/i18n'
import {
  docsSource,
  docsSourceEs,
  docsSourceFr,
  docsSourceId,
  docsSourceJa,
  docsSourcePt,
  docsSourceZhCN,
  docsSourceZhTW,
} from './source'

export const searchAPI = createI18nSearchAPI('advanced', {
  i18n: i18nConfig,
  localeMap: {
    en: { language: 'english' },
    fr: { language: 'french' },
    ja: {
      components: {
        tokenizer: createJapaneseTokenizer(),
      },
      search: {
        threshold: 0,
        tolerance: 0,
      },
    },
    'zh-cn': {
      components: {
        tokenizer: createMandarinTokenizer(),
      },
      search: {
        threshold: 0,
        tolerance: 0,
      },
    },
    'zh-tw': {
      components: {
        tokenizer: createMandarinTokenizer(),
      },
      search: {
        threshold: 0,
        tolerance: 0,
      },
    },
    es: { language: 'spanish' },
    pt: { language: 'portuguese' },
    id: { language: 'indonesian' },
  },
  indexes: [
    ...docsSource.getLanguages(),
    ...docsSourceFr.getLanguages(),
    ...docsSourceEs.getLanguages(),
    ...docsSourcePt.getLanguages(),
    ...docsSourceId.getLanguages(),
    ...docsSourceJa.getLanguages(),
    ...docsSourceZhCN.getLanguages(),
    ...docsSourceZhTW.getLanguages(),
  ].flatMap(({ language, pages }) =>
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
