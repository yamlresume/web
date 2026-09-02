import type { MetadataRoute } from 'next'
import { getLocalizedUrl, languages } from '@/i18n'
import {
  blogSource,
  blogSourceEs,
  blogSourceFr,
  blogSourceId,
  blogSourceJa,
  blogSourcePt,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceEs,
  docsSourceFr,
  docsSourceId,
  docsSourceJa,
  docsSourcePt,
  docsSourceZhCN,
  docsSourceZhTW,
} from '@/lib'
import {
  getLanguageGalleryParams,
  getLanguageGalleryPath,
  getPositionGalleryParams,
  getPositionGalleryPath,
  getTemplateGalleryParams,
  getTemplateGalleryPath,
} from '@/lib/galleryRoutes'

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
    ...docsSourcePt.getPages(),
    ...docsSourceId.getPages(),
  ]

  const allBlogPages = [
    ...blogSource.getPages(),
    ...blogSourceZhCN.getPages(),
    ...blogSourceZhTW.getPages(),
    ...blogSourceFr.getPages(),
    ...blogSourceJa.getPages(),
    ...blogSourceEs.getPages(),
    ...blogSourcePt.getPages(),
    ...blogSourceId.getPages(),
  ]

  const now = new Date()
  const galleryPaths = [
    '/gallery',
    '/gallery/templates',
    '/gallery/languages',
    '/gallery/positions',
    ...getTemplateGalleryParams().map(({ engine, templateId }) =>
      getTemplateGalleryPath(engine, templateId)
    ),
    ...getLanguageGalleryParams().map(({ resumeLanguage }) =>
      getLanguageGalleryPath(resumeLanguage)
    ),
    ...getPositionGalleryParams().map(({ positionId, resumeLanguage }) =>
      getPositionGalleryPath(positionId, resumeLanguage)
    ),
  ]
  const galleryPages: MetadataRoute.Sitemap = galleryPaths.flatMap((path) =>
    languages.map((language) => ({
      url: url(getLocalizedUrl(path, language)),
      lastModified: now,
      changeFrequency: 'monthly' as const,
      priority: path === '/gallery' ? 0.8 : 0.7,
      alternates: {
        languages: Object.fromEntries(
          languages.map((locale) => [
            locale,
            url(getLocalizedUrl(path, locale)),
          ])
        ),
      },
    }))
  )

  return [
    {
      url: url('/'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 1,
    },
    {
      url: url('/blog'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/docs'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    ...galleryPages,
    // Add locale-specific home pages
    {
      url: url('/zh-cn'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/zh-tw'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/ja'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/es'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/pt'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/id'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/fr'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/developer/ai/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/cli/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/core/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/create-yamlresume/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/json2yamlresume/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/node/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/playground/index.html'),
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/samples/index.html'),
      lastModified: now,
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
