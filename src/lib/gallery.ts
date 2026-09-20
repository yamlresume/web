import {
  appendResumeLayouts,
  injectResumeComments,
  type LayoutEngine,
  type LocaleLanguage,
} from '@yamlresume/core'
import {
  getSampleResume,
  listSampleResumeCategories,
  listSampleResumes,
  listSampleResumeTags,
} from '@yamlresume/samples'
import yaml from 'yaml'
import type { Language } from '@/i18n'

const latexLayoutCache = new Map<string, boolean>()

function hasLatexLayout(sampleId: string, locale: LocaleLanguage): boolean {
  const cacheKey = `${sampleId}:${locale}`
  const cached = latexLayoutCache.get(cacheKey)
  if (cached !== undefined) {
    return cached
  }

  const content = getSampleResume(sampleId, locale)
  const doc = yaml.parseDocument(content)
  appendResumeLayouts(doc)
  const parsed = doc.toJS() as {
    layouts?: { engine?: string }[]
  }
  const result =
    parsed.layouts?.some((layout) => layout.engine === 'latex') ?? false
  latexLayoutCache.set(cacheKey, result)
  return result
}

export interface GalleryItem {
  id: string
  title: string
  description: string
  category: string
  position: string
  tags: string[]
  language: LocaleLanguage
  languageLabel: string
  thumbnailUrl: string
  htmlUrl: string
  pdfUrl: string
  docxUrl: string
  markdownUrl: string
  texUrl?: string
}

/**
 * Map web UI languages to the locale languages supported by
 * @yamlresume/samples.
 */
export const webLanguageToSampleLocale: Record<Language, LocaleLanguage> = {
  en: 'en',
  es: 'es',
  fr: 'fr',
  pt: 'pt-br',
  ja: 'ja',
  'zh-cn': 'zh-hans',
  'zh-tw': 'zh-hant-tw',
  id: 'id',
}

/**
 * Display label for a sample locale language.
 */
export const sampleLocaleLabels: Record<LocaleLanguage, string> = {
  en: 'English',
  es: 'Español',
  fr: 'Français',
  'pt-br': 'Português (Brasil)',
  ja: '日本語',
  'zh-hans': '简体中文',
  'zh-hant-hk': '繁體中文（香港）',
  'zh-hant-tw': '繁體中文（台灣）',
  id: 'Bahasa Indonesia',
  de: 'Deutsch',
  nl: 'Nederlands',
  no: 'Norsk',
}

/**
 * Get the public URL path for a sample asset.
 */
function getAssetUrl(
  sampleId: string,
  locale: LocaleLanguage,
  extension: string
): string {
  return `/gallery/examples/${sampleId}/${locale}/resume.${extension}`
}

/**
 * Build a gallery item for a specific sample and locale.
 */
function createGalleryItem(
  sample: ReturnType<typeof listSampleResumes>[number],
  locale: LocaleLanguage
): GalleryItem {
  const i18n = sample.i18n[locale]
  const latexEnabled = hasLatexLayout(sample.id, locale)

  return {
    id: sample.id,
    title: i18n?.title ?? sample.title,
    description: i18n?.description ?? sample.description,
    category: sample.category,
    position: sample.position,
    tags: sample.tags,
    language: locale,
    languageLabel: sampleLocaleLabels[locale] ?? locale,
    thumbnailUrl: getAssetUrl(sample.id, locale, 'webp'),
    htmlUrl: getAssetUrl(sample.id, locale, 'html'),
    pdfUrl: getAssetUrl(sample.id, locale, 'pdf'),
    docxUrl: getAssetUrl(sample.id, locale, 'docx'),
    markdownUrl: getAssetUrl(sample.id, locale, 'md'),
    ...(latexEnabled ? { texUrl: getAssetUrl(sample.id, locale, 'tex') } : {}),
  }
}

let cachedGalleryItems: GalleryItem[] | undefined
let cachedGalleryItemMap: Map<string, GalleryItem> | undefined

/**
 * Return all gallery items across all samples and supported locale languages.
 */
export function getGalleryItems(): GalleryItem[] {
  if (cachedGalleryItems) {
    return cachedGalleryItems
  }

  const samples = listSampleResumes()
  const items: GalleryItem[] = []
  const itemMap = new Map<string, GalleryItem>()

  for (const sample of samples) {
    for (const locale of sample.languages) {
      const item = createGalleryItem(sample, locale)
      items.push(item)
      itemMap.set(`${item.id}:${item.language}`, item)
    }
  }

  cachedGalleryItemMap = itemMap
  cachedGalleryItems = items
  return items
}

const languageItemsCache = new Map<Language, GalleryItem[]>()

/**
 * Return gallery items for a specific web UI language, falling back to
 * English if the sample does not support the mapped locale.
 */
export function getGalleryItemsByLanguage(language: Language): GalleryItem[] {
  const cached = languageItemsCache.get(language)
  if (cached) {
    return cached
  }

  const targetLocale = webLanguageToSampleLocale[language]
  const samples = listSampleResumes()
  const items: GalleryItem[] = []

  for (const sample of samples) {
    const locale = sample.languages.includes(targetLocale) ? targetLocale : 'en'
    const item = getGalleryItemByIdAndLocale(sample.id, locale)
    if (item) {
      items.push(item)
    } else {
      items.push(createGalleryItem(sample, locale))
    }
  }

  languageItemsCache.set(language, items)
  return items
}

/**
 * Check whether a string is a valid sample locale language.
 */
export function isLocaleLanguage(value: string): value is LocaleLanguage {
  return Object.hasOwn(sampleLocaleLabels, value)
}

/**
 * Find a gallery item by its resume id and locale language.
 */
export function getGalleryItemByIdAndLocale(
  id: string,
  language: LocaleLanguage
): GalleryItem | undefined {
  if (!cachedGalleryItemMap) {
    getGalleryItems()
  }
  return cachedGalleryItemMap?.get(`${id}:${language}`)
}

let cachedCategories: string[] | undefined
let cachedTags: string[] | undefined
let cachedLanguages: LocaleLanguage[] | undefined

/**
 * Reset module-level gallery caches (useful for testing).
 */
export function clearGalleryCache(): void {
  cachedGalleryItems = undefined
  cachedGalleryItemMap = undefined
  cachedCategories = undefined
  cachedTags = undefined
  cachedLanguages = undefined
  latexLayoutCache.clear()
  languageItemsCache.clear()
}

/**
 * Return all unique category values across samples.
 */
export function getGalleryCategories(): string[] {
  if (!cachedCategories) {
    cachedCategories = listSampleResumeCategories()
  }
  return cachedCategories
}

/**
 * Return all unique tag values across samples.
 */
export function getGalleryTags(): string[] {
  if (!cachedTags) {
    cachedTags = listSampleResumeTags()
  }
  return cachedTags
}

/**
 * Return all unique locale languages across samples.
 */
export function getGalleryLanguages(): LocaleLanguage[] {
  if (!cachedLanguages) {
    const samples = listSampleResumes()
    cachedLanguages = Array.from(
      new Set(samples.flatMap((sample) => sample.languages))
    ).sort()
  }
  return cachedLanguages
}

/**
 * Load editable sample YAML with schema comments and all default layouts.
 *
 * Returns `undefined` if the sample or locale does not exist.
 */
export function getSampleYamlContent(
  id: string,
  locale: LocaleLanguage
): string | undefined {
  try {
    return getSampleResume(id, locale, {
      withComments: true,
      withLayouts: true,
    })
  } catch {
    return undefined
  }
}

/**
 * Load commented sample YAML with a single, explicitly selected template
 * layout.
 */
export function getTemplateYamlContent(
  id: string,
  locale: LocaleLanguage,
  engine: LayoutEngine,
  template?: string
): string | undefined {
  try {
    const doc = yaml.parseDocument(getSampleResume(id, locale))
    appendResumeLayouts(doc)

    const parsed = doc.toJS() as {
      layouts?: { engine?: LayoutEngine; template?: string }[]
    }
    const layout = parsed.layouts?.find(
      (candidate) => candidate.engine === engine
    )

    if (!layout) {
      return undefined
    }

    doc.set('layouts', [
      {
        ...layout,
        ...(template ? { template } : {}),
      },
    ])

    return injectResumeComments(doc)
  } catch {
    return undefined
  }
}
