import { describe, expect, it } from 'vitest'
import { languages } from './config'
import { getGalleryDetailMessages } from './galleryDetail'

describe('gallery detail messages', () => {
  it('defines complete detail labels for every site language', () => {
    for (const language of languages) {
      const messages = getGalleryDetailMessages(language)

      expect(messages.breadcrumb.label).not.toBe('')
      expect(messages.regionLabel).not.toBe('')
      expect(messages.previewTab).not.toBe('')
      expect(messages.sourceTab).not.toBe('')
      expect(messages.templateInfo).not.toBe('')
      expect(messages.downloadAs).not.toBe('')
      expect(messages.actions.openInPlayground).not.toBe('')
      expect(messages.actions.downloadYaml).not.toBe('')
      expect(messages.actions.openInNewTab).not.toBe('')
      expect(messages.actions.fullscreen).not.toBe('')
      expect(messages.actions.exitFullscreen).not.toBe('')
      expect(messages.renderedFor).toContain('{position}')
      expect(messages.renderedFor).toContain('{language}')
    }
  })
})
