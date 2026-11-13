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
  developerDocsLastModified,
  galleryLastModified,
} from '@/lib/contentDates'
import {
  getExampleGalleryParams,
  getExampleGalleryPath,
  getLanguageGalleryParams,
  getLanguageGalleryPath,
  getTemplateGalleryParams,
  getTemplateGalleryPath,
} from '@/lib/galleryRoutes'

export const revalidate = false

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = 'https://yamlresume.dev'
  const url = (path: string): string => new URL(path, baseUrl).toString()
  const publicPath = (path: string): string => path.replace(/^\/en(?=\/|$)/, '')

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

  const toDate = (value: unknown): Date | null => {
    if (!value) return null
    const date = new Date(value as string | Date)
    return Number.isNaN(date.getTime()) ? null : date
  }

  const newest = (...dates: (Date | null | undefined)[]): Date | null => {
    let result: Date | null = null
    for (const date of dates) {
      if (date && (!result || date > result)) result = date
    }
    return result
  }

  // Index pages carry no date of their own; the honest signal is the newest
  // item they list. This keeps them moving when their contents change instead
  // of stamping every build.
  const docsLastModified = newest(
    ...allDocsPages.map((page) => toDate(page.data.lastModified))
  )
  const blogLastModified = newest(
    ...allBlogPages.map((page) => toDate(page.data.lastModified))
  )
  const siteLastModified = newest(
    docsLastModified,
    blogLastModified,
    galleryLastModified
  )
  const galleryPaths = [
    '/gallery',
    '/gallery/templates',
    '/gallery/languages',
    '/gallery/examples',
    ...getTemplateGalleryParams().map(({ engine, templateId }) =>
      getTemplateGalleryPath(engine, templateId)
    ),
    ...getLanguageGalleryParams().map(({ resumeLanguage }) =>
      getLanguageGalleryPath(resumeLanguage)
    ),
    ...getExampleGalleryParams().map(({ sampleId, resumeLanguage }) =>
      getExampleGalleryPath(sampleId, resumeLanguage)
    ),
  ]
  const galleryPages: MetadataRoute.Sitemap = galleryPaths.map((path) => ({
    url: url(path),
    lastModified: galleryLastModified ?? now,
    changeFrequency: 'monthly' as const,
    priority: path === '/gallery' ? 0.8 : 0.7,
  }))

  return [
    {
      url: url('/'),
      lastModified: siteLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 1,
    },
    // Unlike /docs, the blog has no `content/blog/index.mdx`, so no page loop
    // emits its index. Emit one per locale instead of hardcoding the bare path.
    ...languages.map((language) => ({
      url: url(getLocalizedUrl('/blog', language)),
      lastModified: blogLastModified ?? now,
      changeFrequency: 'monthly' as const,
      priority: 0.8,
    })),
    // `/docs` is not listed here: content/docs/index.mdx is a real page, so the
    // docs loop below already emits it with that page's own lastModified.
    ...galleryPages,
    ...languages.map((language) => ({
      url: url(getLocalizedUrl('/playground', language)),
      lastModified: galleryLastModified ?? now,
      changeFrequency: 'monthly' as const,
      priority: 0.7,
    })),
    // Add locale-specific home pages
    {
      url: url('/zh-cn'),
      lastModified: siteLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.9,
    },
    {
      url: url('/zh-tw'),
      lastModified: siteLastModified ?? now,
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
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/cli/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/core/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/create-yamlresume/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/json2yamlresume/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/node/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/playground/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: url('/developer/samples/index.html'),
      lastModified: developerDocsLastModified ?? now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    ...(await Promise.all(
      allDocsPages.map(async (page) => {
        const lastmod = page.data.lastModified

        return {
          url: url(publicPath(page.url)),
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
          url: url(publicPath(page.url)),
          lastModified: lastmod ? new Date(lastmod) : undefined,
          changeFrequency: 'monthly',
          priority: 0.5,
        } as MetadataRoute.Sitemap[number]
      })
    )),
  ]
}
