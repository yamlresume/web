import type { LayoutEngine, LocaleLanguage } from '@yamlresume/core'
import galleryTemplates from '@/config/galleryTemplates.json'
import type { Language } from '@/i18n'
import {
  type GalleryItem,
  getGalleryItems,
  getGalleryItemsByLanguage,
  getGalleryLanguages,
} from './gallery'

export interface TemplateShowcase {
  id: string
  engine: LayoutEngine
  template?: string
  name: string
  description: string
  style: string
  imageUrl: string
  sampleId: string
  sampleLocale: LocaleLanguage
}

export const TEMPLATE_SHOWCASES = galleryTemplates as TemplateShowcase[]

export function getTemplateShowcases(): TemplateShowcase[] {
  return TEMPLATE_SHOWCASES
}

export interface LanguageShowcase {
  locale: LocaleLanguage
  label: string
  item: GalleryItem
}

export function getLanguageShowcases(): LanguageShowcase[] {
  const items = getGalleryItems()
  const locales = getGalleryLanguages()

  return locales
    .map((locale) => {
      const item = items.find((candidate) => candidate.language === locale)
      if (!item) {
        return null
      }

      return {
        locale,
        label: item.languageLabel,
        item,
      }
    })
    .filter((showcase): showcase is LanguageShowcase => showcase !== null)
}

export function getPositionShowcases(language: Language): GalleryItem[] {
  return getGalleryItemsByLanguage(language)
}
