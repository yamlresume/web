import { describe, expect, it } from 'vitest'
import {
  getGalleryDetailMetadata,
  getLanguageGalleryPath,
  getPositionGalleryPath,
  getTemplateGalleryPath,
  resolveLanguageGalleryDetail,
  resolvePositionGalleryDetail,
  resolveTemplateGalleryDetail,
} from './galleryRoutes'

describe('galleryRoutes', () => {
  it('builds category-specific gallery paths', () => {
    expect(getTemplateGalleryPath('html', 'calm')).toBe(
      '/gallery/templates/html/calm'
    )
    expect(getLanguageGalleryPath('zh-hans')).toBe('/gallery/languages/zh-hans')
    expect(getPositionGalleryPath('software-engineer', 'ja')).toBe(
      '/gallery/positions/software-engineer/ja'
    )
  })

  it('resolves templates by engine and engine-specific template id', () => {
    const detail = resolveTemplateGalleryDetail('html', 'calm')

    expect(detail?.target).toEqual({
      type: 'template',
      engine: 'html',
      templateId: 'calm',
    })
    expect(detail?.currentTemplate?.name).toBe('Calm')
    expect(detail?.yamlContent).toContain('template: calm')
    expect(detail?.preview).toEqual({
      type: 'image',
      src: '/gallery/templates/html/calm/resume.webp',
    })
    expect(detail?.downloads).toEqual([
      {
        format: 'html',
        href: '/gallery/templates/html/calm/resume.html',
      },
      {
        format: 'webp',
        href: '/gallery/templates/html/calm/resume.webp',
      },
    ])
    expect(detail?.canonicalPath).toBe('/gallery/templates/html/calm')
  })

  it('resolves the DOCX Calm template with its DOCX download', () => {
    const detail = resolveTemplateGalleryDetail('docx', 'calm')

    expect(detail?.target).toEqual({
      type: 'template',
      engine: 'docx',
      templateId: 'calm',
    })
    expect(detail?.preview).toEqual({
      type: 'image',
      src: '/static/images/docs/layouts/docx/templates/calm.png',
    })
    expect(detail?.downloads).toEqual([
      {
        format: 'docx',
        href: '/gallery/templates/docx/calm/resume.docx',
      },
    ])
  })

  it('uses generated PDF and WebP assets for LaTeX templates', () => {
    const detail = resolveTemplateGalleryDetail('latex', 'jake')

    expect(detail?.yamlContent).toContain('template: jake')
    expect(detail?.preview).toEqual({
      type: 'image',
      src: '/gallery/templates/latex/jake/resume.webp',
    })
    expect(detail?.downloads).toEqual([
      {
        format: 'pdf',
        href: '/gallery/templates/latex/jake/resume.pdf',
      },
      {
        format: 'tex',
        href: '/gallery/templates/latex/jake/resume.tex',
      },
      {
        format: 'webp',
        href: '/gallery/templates/latex/jake/resume.webp',
      },
    ])
  })

  it('rejects invalid engine and template combinations', () => {
    expect(resolveTemplateGalleryDetail('latex', 'calm')).toBeUndefined()
    expect(resolveTemplateGalleryDetail('unknown', 'calm')).toBeUndefined()
  })

  it('resolves language showcases', () => {
    const detail = resolveLanguageGalleryDetail('ja')

    expect(detail?.target).toEqual({
      type: 'language',
      resumeLanguage: 'ja',
    })
    expect(detail?.item.language).toBe('ja')
    expect(detail?.item.thumbnailUrl).toMatch(
      /^\/gallery\/positions\/[^/]+\/ja\/resume\.webp$/
    )
    expect(detail?.preview).toEqual({
      type: 'image',
      src: detail?.item.thumbnailUrl,
    })
    expect(detail?.downloads).toHaveLength(6)
    expect(detail?.canonicalPath).toBe('/gallery/languages/ja')
  })

  it('resolves only valid position and resume-language combinations', () => {
    const detail = resolvePositionGalleryDetail('software-engineer', 'ja')

    expect(detail?.target).toEqual({
      type: 'position',
      positionId: 'software-engineer',
      resumeLanguage: 'ja',
    })
    expect(detail?.item.htmlUrl).toBe(
      '/gallery/positions/software-engineer/ja/resume.html'
    )
    expect(detail?.yamlContent).toContain('\nlayouts:\n')
    expect(detail?.item.thumbnailUrl).toBe(
      '/gallery/positions/software-engineer/ja/resume.webp'
    )
    expect(detail?.canonicalPath).toBe(
      '/gallery/positions/software-engineer/ja'
    )
    expect(resolvePositionGalleryDetail('not-a-position', 'ja')).toBeUndefined()
    expect(
      resolvePositionGalleryDetail('software-engineer', 'not-a-language')
    ).toBeUndefined()
  })

  it('generates localized canonical metadata', () => {
    const detail = resolveTemplateGalleryDetail('html', 'calm')

    expect(detail).toBeDefined()
    if (!detail) {
      throw new Error('Expected the HTML calm template to resolve')
    }

    const metadata = getGalleryDetailMetadata(detail, 'fr')

    expect(metadata.title).toBe('Calm HTML Resume Template')
    expect(metadata.alternates?.canonical).toBe(
      '/fr/gallery/templates/html/calm'
    )
    expect(metadata.alternates?.languages).toMatchObject({
      en: '/gallery/templates/html/calm',
      ja: '/ja/gallery/templates/html/calm',
    })
  })
})
