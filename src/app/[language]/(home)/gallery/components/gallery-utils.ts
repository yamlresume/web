import type { GalleryItem } from '@/lib/gallery'

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
