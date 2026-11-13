import { describe, expect, it } from 'vitest'
import { getGalleryItems } from './gallery'

describe('getGalleryItems', () => {
  it('reuses the gallery items after the first call', () => {
    const items = getGalleryItems()

    expect(items.length).toBeGreaterThan(0)
    expect(getGalleryItems()).toBe(items)
  })
})
