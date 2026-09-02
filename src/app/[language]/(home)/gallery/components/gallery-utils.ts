import type { Language } from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import { webLanguageToSampleLocale } from '@/lib/gallery'

export interface GalleryFilters {
  search: string
  category: string
  tag: string
  language: string
}

export const emptyFilters: GalleryFilters = {
  search: '',
  category: '',
  tag: '',
  language: '',
}

export interface GalleryFacets {
  categories: string[]
  tags: string[]
  languages: string[]
}

export function getPositionItems(
  items: GalleryItem[],
  siteLanguage: Language,
  resumeLanguage: string
): GalleryItem[] {
  const groupedItems = new Map<string, GalleryItem[]>()
  for (const item of items) {
    const variants = groupedItems.get(item.id) ?? []
    variants.push(item)
    groupedItems.set(item.id, variants)
  }
  const preferredLanguage = webLanguageToSampleLocale[siteLanguage]

  return [...groupedItems.values()]
    .map((variants) => {
      if (resumeLanguage) {
        return variants.find((item) => item.language === resumeLanguage)
      }

      return (
        variants.find((item) => item.language === preferredLanguage) ??
        variants.find((item) => item.language === 'en') ??
        variants[0]
      )
    })
    .filter((item): item is GalleryItem => item !== undefined)
    .sort((a, b) => a.title.localeCompare(b.title))
}

export function getFacets(items: GalleryItem[]): GalleryFacets {
  return {
    categories: [...new Set(items.map((item) => item.category))].sort(),
    tags: [...new Set(items.flatMap((item) => item.tags))].sort(),
    languages: [...new Set(items.map((item) => item.language))].sort(),
  }
}

export function filterItems(
  items: GalleryItem[],
  { search, category, tag, language }: GalleryFilters
): GalleryItem[] {
  const query = search.toLowerCase()

  return items.filter((item) => {
    const matchesSearch =
      !query ||
      item.title.toLowerCase().includes(query) ||
      item.description.toLowerCase().includes(query) ||
      item.category.toLowerCase().includes(query) ||
      item.position.toLowerCase().includes(query) ||
      item.tags.some((itemTag) => itemTag.toLowerCase().includes(query))
    const matchesCategory = !category || item.category === category
    const matchesTag = !tag || item.tags.includes(tag)
    const matchesLanguage = !language || item.language === language

    return matchesSearch && matchesCategory && matchesTag && matchesLanguage
  })
}

export function countActiveFilters({
  category,
  tag,
  language,
}: GalleryFilters): number {
  return [category, tag, language].filter(Boolean).length
}
