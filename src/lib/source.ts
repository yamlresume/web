import { blog, blogZhCN, blogZhTW, docs, docsZhCN, docsZhTW } from '@/.source'
import { loader } from 'fumadocs-core/source'
import { createMDXSource } from 'fumadocs-mdx'

// Create sources for each locale
export const docsSource = loader({
  baseUrl: '/docs',
  source: docs.toFumadocsSource(),
})

export const docsSourceZhCN = loader({
  baseUrl: '/zh-CN/docs',
  source: docsZhCN.toFumadocsSource(),
})

export const docsSourceZhTW = loader({
  baseUrl: '/zh-TW/docs',
  source: docsZhTW.toFumadocsSource(),
})

export const blogSource = loader({
  baseUrl: '/blog',
  source: createMDXSource(blog),
})

export const blogSourceZhCN = loader({
  baseUrl: '/zh-CN/blog',
  source: createMDXSource(blogZhCN),
})

export const blogSourceZhTW = loader({
  baseUrl: '/zh-TW/blog',
  source: createMDXSource(blogZhTW),
})

// Helper function to get localized sources
export function getLocalizedSources(locale: string) {
  switch (locale) {
    case 'zh-CN':
      return {
        docs: docsSourceZhCN,
        blog: blogSourceZhCN,
      }
    case 'zh-TW':
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
