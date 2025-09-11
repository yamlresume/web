import { blog, blogZhCN, blogZhTW, docs, docsZhCN, docsZhTW } from '@/.source'
import { defineI18n } from 'fumadocs-core/i18n'
import { loader } from 'fumadocs-core/source'
import { createMDXSource } from 'fumadocs-mdx'

// Create i18n configurations for each locale
const i18nEn = defineI18n({
  defaultLanguage: 'en',
  languages: ['en'],
  fallbackLanguage: 'en',
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

// Create sources for each locale
export const docsSource = loader({
  baseUrl: '/docs',
  source: docs.toFumadocsSource(),
  i18n: i18nEn,
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

export const blogSource = loader({
  baseUrl: '/blog',
  source: createMDXSource(blog),
  i18n: i18nEn,
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

// Helper function to get localized sources
export function getLocalizedSources(locale: string) {
  switch (locale) {
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
    default:
      return {
        docs: docsSource,
        blog: blogSource,
      }
  }
}
