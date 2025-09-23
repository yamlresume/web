import { createTokenizer } from '@orama/tokenizers/mandarin'
import { createI18nSearchAPI } from 'fumadocs-core/search/server'
import { i18nConfig } from '@/i18n'
import { docsSource, docsSourceJa, docsSourceZhCN, docsSourceZhTW } from '@/lib'

// https://github.com/fuma-nama/fumadocs/blob/ea9fbcb2cfb4cc667c75f4595e955c3fa2b523a8/apps/docs/content/docs/headless/search/orama.mdx#L258
// ref: https://fumadocs.dev/docs/headless/search/orama
export const { GET } = createI18nSearchAPI('advanced', {
  i18n: i18nConfig,
  localeMap: {
    en: { language: 'english' },
    fr: { language: 'french' },
    ja: { language: 'english' },
    'zh-cn': {
      components: {
        tokenizer: createTokenizer(),
      },
      search: {
        threshold: 0,
        tolerance: 0,
      },
    },
    'zh-tw': {
      components: {
        tokenizer: createTokenizer(),
      },
      search: {
        threshold: 0,
        tolerance: 0,
      },
    },
  },
  indexes: [
    ...docsSource.getLanguages(),
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
