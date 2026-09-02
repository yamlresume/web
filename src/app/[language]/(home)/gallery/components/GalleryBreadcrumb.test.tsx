import { render, screen, within } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { makeGalleryItem } from './fixtures'
import { GalleryBreadcrumb } from './GalleryBreadcrumb'

const item = makeGalleryItem({
  id: 'software-engineer',
  languageLabel: 'English',
})

describe('GalleryBreadcrumb', () => {
  it('renders the position hierarchy', () => {
    render(
      <GalleryBreadcrumb
        item={item}
        language="en"
        target={{
          type: 'position',
          positionId: 'software-engineer',
          resumeLanguage: 'en',
        }}
      />
    )

    const breadcrumb = screen.getByRole('navigation', { name: 'Breadcrumb' })
    expect(
      within(breadcrumb).getByRole('link', { name: 'Gallery' })
    ).toHaveAttribute('href', '/gallery')
    expect(breadcrumb).toHaveTextContent('Positions')
    expect(breadcrumb).toHaveTextContent('Software Engineer')
  })

  it('renders the language hierarchy with a localized gallery link', () => {
    render(
      <GalleryBreadcrumb
        item={item}
        language="fr"
        target={{ type: 'language', resumeLanguage: 'en' }}
      />
    )

    expect(screen.getByRole('link', { name: 'Galerie' })).toHaveAttribute(
      'href',
      '/fr/gallery'
    )
    expect(screen.getByRole('navigation')).toHaveTextContent('LanguesEnglish')
  })

  it('renders engine and template segments for template details', () => {
    render(
      <GalleryBreadcrumb
        item={item}
        language="en"
        target={{ type: 'template', engine: 'html', templateId: 'calm' }}
        currentTemplate={{
          id: 'html-calm',
          engine: 'html',
          template: 'calm',
          name: 'Calm',
          description: 'A calm template',
          style: 'Calm',
          imageUrl: '/calm.png',
          sampleId: 'software-engineer',
          sampleLocale: 'en',
        }}
      />
    )

    const breadcrumb = screen.getByRole('navigation')
    expect(breadcrumb).toHaveTextContent('Templates')
    expect(breadcrumb).toHaveTextContent('HTML')
    expect(breadcrumb).toHaveTextContent('Calm')
  })
})
