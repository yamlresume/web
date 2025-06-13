import { blogSource, docsSource } from '@/lib/source'
import type { MetadataRoute } from 'next'

export const revalidate = false

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = 'https://yamlresume.dev'
  const url = (path: string): string => new URL(path, baseUrl).toString()

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
    ...(await Promise.all(
      docsSource.getPages().map(async (page) => {
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
      blogSource.getPages().map(async (page) => {
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
