import { defineI18n } from 'fumadocs-core/i18n'
import { loader } from 'fumadocs-core/source'
import { createMDXSource } from 'fumadocs-mdx'
import {
  blog,
  blogFr,
  blogZhCN,
  blogZhTW,
  docs,
  docsFr,
  docsZhCN,
  docsZhTW,
} from '@/.source'

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

const i18nFr = defineI18n({
  defaultLanguage: 'fr',
  languages: ['fr'],
  fallbackLanguage: 'fr',
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

export const docsSourceFr = loader({
  baseUrl: '/docs',
  source: docsFr.toFumadocsSource(),
  i18n: i18nFr,
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

export const blogSourceFr = loader({
  baseUrl: '/blog',
  source: createMDXSource(blogFr),
  i18n: i18nFr,
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
    case 'fr':
      return {
        docs: docsSourceFr,
        blog: blogSourceFr,
      }
    default:
      return {
        docs: docsSource,
        blog: blogSource,
      }
  }
}
