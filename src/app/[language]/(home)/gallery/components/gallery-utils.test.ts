import { describe, expect, it } from 'vitest'
import { makeGalleryItem } from './fixtures'
import {
  countActiveFilters,
  emptyFilters,
  filterItems,
  getFacets,
} from './gallery-utils'

describe('getFacets', () => {
  it('returns sorted unique facets', () => {
    const items = [
      makeGalleryItem({ category: 'Design', tags: ['a', 'b'], language: 'es' }),
      makeGalleryItem({
        category: 'Engineering',
        tags: ['b', 'c'],
        language: 'en',
      }),
    ]

    expect(getFacets(items)).toEqual({
      categories: ['Design', 'Engineering'],
      tags: ['a', 'b', 'c'],
      languages: ['en', 'es'],
    })
  })

  it('handles empty items', () => {
    expect(getFacets([])).toEqual({
      categories: [],
      tags: [],
      languages: [],
    })
  })
})

describe('filterItems', () => {
  const items = [
    makeGalleryItem(),
    makeGalleryItem({
      id: 'designer',
      title: 'Graphic Designer',
      description: 'A designer resume',
      category: 'Design',
      position: 'Art Director',
      tags: ['creative'],
      language: 'es',
      languageLabel: 'ES',
    }),
  ]

  it('returns all items with empty filters', () => {
    expect(filterItems(items, emptyFilters)).toHaveLength(2)
  })

  it('filters by search across fields (case-insensitive)', () => {
    expect(
      filterItems(items, { ...emptyFilters, search: 'ENGINEER' })
    ).toHaveLength(1)
    expect(
      filterItems(items, { ...emptyFilters, search: 'art director' })
    ).toHaveLength(1)
    expect(
      filterItems(items, { ...emptyFilters, search: 'creative' })
    ).toHaveLength(1)
    expect(
      filterItems(items, { ...emptyFilters, search: 'nope' })
    ).toHaveLength(0)
  })

  it('filters by exact facet matches', () => {
    expect(filterItems(items, { ...emptyFilters, category: 'Design' })).toEqual(
      [items[1]]
    )
    expect(filterItems(items, { ...emptyFilters, tag: 'tech' })).toEqual([
      items[0],
    ])
    expect(filterItems(items, { ...emptyFilters, language: 'es' })).toEqual([
      items[1],
    ])
  })

  it('combines filters with AND semantics', () => {
    expect(
      filterItems(items, { ...emptyFilters, search: 'resume', language: 'en' })
    ).toEqual([items[0]])
    expect(
      filterItems(items, {
        ...emptyFilters,
        search: 'resume',
        language: 'fr',
      })
    ).toHaveLength(0)
  })
})

describe('countActiveFilters', () => {
  it('ignores search and counts facet filters only', () => {
    expect(countActiveFilters(emptyFilters)).toBe(0)
    expect(countActiveFilters({ ...emptyFilters, search: 'foo' })).toBe(0)
    expect(countActiveFilters({ ...emptyFilters, tag: 'tech' })).toBe(1)
    expect(
      countActiveFilters({
        ...emptyFilters,
        category: 'Design',
        tag: 'tech',
        language: 'en',
      })
    ).toBe(3)
  })
})
