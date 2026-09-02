import type { GalleryItem } from '@/lib/gallery'

export function makeGalleryItem(
  overrides: Partial<GalleryItem> = {}
): GalleryItem {
  return {
    id: 'sample-id',
    title: 'Software Engineer',
    description: 'A resume for a software engineer',
    category: 'Engineering',
    position: 'Senior Engineer',
    tags: ['tech', 'remote'],
    language: 'en',
    languageLabel: 'EN',
    thumbnailUrl: '/gallery/examples/software-engineer/en/resume.webp',
    htmlUrl: '/gallery/examples/software-engineer/en/resume.html',
    pdfUrl: '/gallery/examples/software-engineer/en/resume.pdf',
    docxUrl: '/gallery/examples/software-engineer/en/resume.docx',
    markdownUrl: '/gallery/examples/software-engineer/en/resume.md',
    texUrl: '/gallery/examples/software-engineer/en/resume.tex',
    ...overrides,
  }
}
