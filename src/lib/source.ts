import { defineI18n } from 'fumadocs-core/i18n'
import { loader } from 'fumadocs-core/source'
import { toFumadocsSource } from 'fumadocs-mdx/runtime/server'
import {
  blog,
  blogEs,
  blogFr,
  blogId,
  blogJa,
  blogPt,
  blogZhCN,
  blogZhTW,
  docs,
  docsEs,
  docsFr,
  docsId,
  docsJa,
  docsPt,
  docsZhCN,
  docsZhTW,
} from '@/.source/server'
import { defaultLanguage, type Language, languages } from '@/i18n/config'

// One row per locale. Everything below is derived from this table, so adding a
// locale means adding a row (and its collections in source.config.ts).
const collections = {
  en: { docs, blog },
  es: { docs: docsEs, blog: blogEs },
  fr: { docs: docsFr, blog: blogFr },
  pt: { docs: docsPt, blog: blogPt },
  ja: { docs: docsJa, blog: blogJa },
  'zh-cn': { docs: docsZhCN, blog: blogZhCN },
  'zh-tw': { docs: docsZhTW, blog: blogZhTW },
  id: { docs: docsId, blog: blogId },
} satisfies Record<Language, { docs: object; blog: object }>

function createSources(language: Language) {
  // Each locale is loaded as its own single-language source, so a page can only
  // resolve against its own content tree.
  const i18n = defineI18n({
    defaultLanguage: language,
    languages: [language],
    fallbackLanguage: language,
  })
  const collection = collections[language]

  return {
    docs: loader({
      baseUrl: '/docs',
      source: collection.docs.toFumadocsSource(),
      i18n,
    }),
    blog: loader({
      baseUrl: '/blog',
      source: toFumadocsSource(collection.blog, []),
      i18n,
    }),
  }
}

export type LocalizedSources = ReturnType<typeof createSources>

export const localizedSources = Object.fromEntries(
  languages.map((language) => [language, createSources(language)])
) as Record<Language, LocalizedSources>

// The English sources stay exported by name because they anchor the page types
// used by the llm routes.
export const docsSource = localizedSources.en.docs
export const blogSource = localizedSources.en.blog

export function getLocalizedSources(language: string): LocalizedSources {
  return (
    localizedSources[language as Language] ?? localizedSources[defaultLanguage]
  )
}
