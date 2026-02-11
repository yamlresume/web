import type { MetadataRoute } from 'next'
import {
  blogSource,
  blogSourceEs,
  blogSourceFr,
  blogSourceJa,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceEs,
  docsSourceFr,
  docsSourceJa,
  docsSourceZhCN,
  docsSourceZhTW,
} from '@/lib'

export const revalidate = false

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = 'https://yamlresume.dev'
  const url = (path: string): string => new URL(path, baseUrl).toString()

  // Get all pages from all locales
  const allDocsPages = [
    ...docsSource.getPages(),
    ...docsSourceZhCN.getPages(),
    ...docsSourceZhTW.getPages(),
    ...docsSourceFr.getPages(),
    ...docsSourceJa.getPages(),
    ...docsSourceEs.getPages(),
  ]

  const allBlogPages = [
    ...blogSource.getPages(),
    ...blogSourceZhCN.getPages(),
    ...blogSourceZhTW.getPages(),
    ...blogSourceFr.getPages(),
    ...blogSourceJa.getPages(),
    ...blogSourceEs.getPages(),
  ]

  return [
    {
      url: url('/'),
      changeFrequency: 'monthly',
      priority: 1,
    },
    {
      url: url('/blog'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/docs'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    // Add locale-specific home pages
    {
      url: url('/zh-cn'),
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/zh-tw'),
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/ja'),
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/es'),
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/developer/cli/index.html'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/core/index.html'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/create-yamlresume/index.html'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/json2yamlresume/index.html'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/playground/index.html'),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    ...(await Promise.all(
      allDocsPages.map(async (page) => {
        const lastmod = page.data.lastModified

        return {
          url: url(page.url),
          lastModified: lastmod ? new Date(lastmod) : undefined,
          changeFrequency: 'weekly',
          priority: 0.8,
        } as MetadataRoute.Sitemap[number]
      })
    )),
    ...(await Promise.all(
      allBlogPages.map(async (page) => {
        const lastmod = page.data.lastModified

        return {
          url: url(page.url),
          lastModified: lastmod ? new Date(lastmod) : undefined,
          changeFrequency: 'monthly',
          priority: 0.5,
        } as MetadataRoute.Sitemap[number]
      })
    )),
  ]
}
