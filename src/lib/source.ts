import { defineI18n } from 'fumadocs-core/i18n'
import { loader } from 'fumadocs-core/source'
import { createMDXSource } from 'fumadocs-mdx'
import {
  blog,
  blogEs,
  blogFr,
  blogJa,
  blogZhCN,
  blogZhTW,
  docs,
  docsEs,
  docsFr,
  docsJa,
  docsZhCN,
  docsZhTW,
} from '@/.source'

// Create i18n configurations for each locale
const i18nEn = defineI18n({
  defaultLanguage: 'en',
  languages: ['en'],
  fallbackLanguage: 'en',
})

const i18nFr = defineI18n({
  defaultLanguage: 'fr',
  languages: ['fr'],
  fallbackLanguage: 'fr',
})

const i18nEs = defineI18n({
  defaultLanguage: 'es',
  languages: ['es'],
  fallbackLanguage: 'es',
})

const i18nJa = defineI18n({
  defaultLanguage: 'ja',
  languages: ['ja'],
  fallbackLanguage: 'ja',
})

const i18nZhCN = defineI18n({
  defaultLanguage: 'zh-cn',
  languages: ['zh-cn'],
  fallbackLanguage: 'zh-cn',
})

const i18nZhTW = defineI18n({
  defaultLanguage: 'zh-tw',
  languages: ['zh-tw'],
  fallbackLanguage: 'zh-tw',
})

// Create sources for each language
export const blogSource = loader({
  baseUrl: '/blog',
  source: createMDXSource(blog),
  i18n: i18nEn,
})

export const blogSourceFr = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogFr),
  i18n: i18nFr,
})

export const blogSourceEs = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogEs),
  i18n: i18nEs,
})

export const blogSourceJa = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogJa),
  i18n: i18nJa,
})

export const blogSourceZhCN = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogZhCN),
  i18n: i18nZhCN,
})

export const blogSourceZhTW = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogZhTW),
  i18n: i18nZhTW,
})

export const docsSource = loader({
  baseUrl: '/docs',
  source: docs.toFumadocsSource(),
  i18n: i18nEn,
})

export const docsSourceFr = loader({
  baseUrl: '/docs',
  source: docsFr.toFumadocsSource(),
  i18n: i18nFr,
})

export const docsSourceEs = loader({
  baseUrl: '/docs',
  source: docsEs.toFumadocsSource(),
  i18n: i18nEs,
})

export const docsSourceJa = loader({
  baseUrl: '/docs',
  source: docsJa.toFumadocsSource(),
  i18n: i18nJa,
})

export const docsSourceZhCN = loader({
  baseUrl: '/docs',
  source: docsZhCN.toFumadocsSource(),
  i18n: i18nZhCN,
})

export const docsSourceZhTW = loader({
  baseUrl: '/docs',
  source: docsZhTW.toFumadocsSource(),
  i18n: i18nZhTW,
})

// Helper function to get localized sources
export function getLocalizedSources(locale: string) {
  switch (locale) {
    case 'fr':
      return {
        docs: docsSourceFr,
        blog: blogSourceFr,
      }
    case 'es':
      return {
        docs: docsSourceEs,
        blog: blogSourceEs,
      }
    case 'zh-cn':
      return {
        docs: docsSourceZhCN,
        blog: blogSourceZhCN,
      }
    case 'zh-tw':
      return {
        docs: docsSourceZhTW,
        blog: blogSourceZhTW,
      }
    case 'ja':
      return {
        docs: docsSourceJa,
        blog: blogSourceJa,
      }
    default:
      return {
        docs: docsSource,
        blog: blogSource,
      }
  }
}
