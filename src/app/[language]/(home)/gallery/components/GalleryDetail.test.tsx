import { render, screen, within } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it } from 'vitest'
import { makeGalleryItem } from './fixtures'
import { GalleryDetail } from './GalleryDetail'

const positionTarget = {
  type: 'position' as const,
  positionId: 'software-engineer',
  resumeLanguage: 'en' as const,
}

describe('GalleryDetail', () => {
  const item = makeGalleryItem({ id: 'software-engineer' })

  it('renders a route-aware breadcrumb, title and description', () => {
    render(<GalleryDetail item={item} language="en" target={positionTarget} />)

    const breadcrumb = screen.getByRole('navigation', { name: 'Breadcrumb' })
    expect(screen.getByRole('link', { name: 'Gallery' })).toHaveAttribute(
      'href',
      '/gallery'
    )
    expect(breadcrumb).toHaveTextContent('Positions')
    expect(breadcrumb).toHaveTextContent('Software Engineer')
    expect(
      screen.getByRole('heading', { name: 'Software Engineer', level: 1 })
    ).toBeInTheDocument()
    expect(
      screen.getByText('A resume for a software engineer')
    ).toBeInTheDocument()
  })

  it('renders category and language badges', () => {
    render(<GalleryDetail item={item} language="en" />)

    expect(screen.getByText('Engineering')).toBeInTheDocument()
    expect(screen.getAllByText('EN').length).toBeGreaterThanOrEqual(1)
  })

  it('renders primary actions and downloads in the sidebar', () => {
    render(<GalleryDetail item={item} language="en" yamlContent="yaml: true" />)

    expect(
      screen.getByRole('button', { name: 'Download YAML' })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: 'Open in Playground' })
    ).toHaveAttribute('href', '/playground?sample=software-engineer&locale=en')
    expect(screen.getByRole('heading', { name: 'Download as' })).toBeVisible()
    expect(screen.getByRole('link', { name: 'PDF' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.pdf'
    )
    expect(screen.getByRole('link', { name: 'TeX' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.tex'
    )
    expect(screen.getByRole('link', { name: 'DOCX' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.docx'
    )
    expect(screen.getByRole('link', { name: 'HTML' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.html'
    )
    expect(screen.getByRole('link', { name: 'Markdown' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.md'
    )
    expect(screen.getByRole('link', { name: 'WebP' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/en/resume.webp'
    )
    expect(screen.queryByText('Download rendered:')).not.toBeInTheDocument()
  })

  it('renders the WebP preview image by default', () => {
    render(<GalleryDetail item={item} language="en" />)

    const preview = screen.getByRole('img', {
      name: 'Software Engineer resume preview',
    })
    expect(preview).toHaveAttribute(
      'src',
      '/gallery/positions/software-engineer/en/resume.webp'
    )
  })

  it('shows the highlighted template badge when provided', () => {
    render(
      <GalleryDetail item={item} language="en" highlightedTemplate="jake" />
    )

    expect(screen.getByText('jake')).toBeInTheDocument()
  })

  it('keeps Template Info and Download as visible in both tabs', async () => {
    const user = userEvent.setup()
    render(
      <GalleryDetail
        item={item}
        language="en"
        yamlContent="locale: en\ncontent: {}"
      />
    )

    const tabsCard = screen.getByRole('region', {
      name: 'Resume preview and downloads',
    })

    expect(
      within(tabsCard).getByRole('heading', { name: 'Template Info' })
    ).toBeVisible()
    expect(
      within(tabsCard).getByRole('heading', { name: 'Download as' })
    ).toBeVisible()

    await user.click(
      within(tabsCard).getByRole('tab', {
        name: 'Source',
      })
    )

    expect(within(tabsCard).getByText(/locale: en/)).toBeInTheDocument()
    expect(within(tabsCard).getByText('1')).toBeInTheDocument()
    expect(
      within(tabsCard).getByRole('button', { name: 'Copy' })
    ).toBeInTheDocument()
    expect(
      screen.queryByRole('img', {
        name: 'Software Engineer resume preview',
      })
    ).not.toBeInTheDocument()
    expect(
      within(tabsCard).getByRole('heading', { name: 'Template Info' })
    ).toBeVisible()
    expect(
      within(tabsCard).getByRole('heading', { name: 'Download as' })
    ).toBeVisible()

    await user.click(within(tabsCard).getByRole('tab', { name: 'Preview' }))
    expect(
      screen.getByRole('img', {
        name: 'Software Engineer resume preview',
      })
    ).toBeInTheDocument()
  })

  it('renders server-highlighted YAML tokens', async () => {
    const user = userEvent.setup()
    render(
      <GalleryDetail
        item={item}
        language="en"
        yamlContent="name: Andy"
        highlightedYaml={[
          {
            id: 'line-0',
            tokens: [
              {
                id: 'token-0',
                content: 'name',
                color: '#85E89D',
                fontStyle: 0,
              },
              {
                id: 'token-4',
                content: ': Andy',
                color: '#E1E4E8',
                fontStyle: 0,
              },
            ],
          },
        ]}
      />
    )

    await user.click(screen.getByRole('tab', { name: 'Source' }))

    expect(screen.getByText('name')).toHaveStyle({ color: '#85E89D' })
    expect(screen.getByText(': Andy')).toHaveStyle({ color: '#E1E4E8' })
    expect(screen.getByRole('button', { name: 'Copy' })).toBeEnabled()
  })

  it('connects tabs to panels and supports keyboard navigation', async () => {
    const user = userEvent.setup()
    render(
      <GalleryDetail
        item={item}
        language="en"
        yamlContent="locale: en\ncontent: {}"
      />
    )

    const previewTab = screen.getByRole('tab', { name: 'Preview' })
    const sourceTab = screen.getByRole('tab', { name: 'Source' })
    const previewPanel = screen.getByRole('tabpanel')

    expect(previewTab).toHaveAttribute('aria-controls', previewPanel.id)
    expect(previewPanel).toHaveAttribute('aria-labelledby', previewTab.id)
    expect(previewTab).toHaveAttribute('aria-selected', 'true')
    expect(sourceTab).toHaveAttribute('tabindex', '-1')

    previewTab.focus()
    await user.keyboard('{ArrowRight}')

    expect(sourceTab).toHaveFocus()
    expect(sourceTab).toHaveAttribute('aria-selected', 'true')
    const sourcePanel = screen.getByRole('tabpanel')
    expect(sourceTab).toHaveAttribute('aria-controls', sourcePanel.id)
    expect(sourcePanel).toHaveAttribute('aria-labelledby', sourceTab.id)

    await user.keyboard('{Home}')
    expect(previewTab).toHaveFocus()
    await user.keyboard('{End}')
    expect(sourceTab).toHaveFocus()
    await user.keyboard('{ArrowRight}')
    expect(previewTab).toHaveFocus()
    await user.keyboard('{ArrowLeft}')
    expect(sourceTab).toHaveFocus()
  })

  it('renders localized detail labels', () => {
    render(
      <GalleryDetail
        item={item}
        language="es"
        target={positionTarget}
        yamlContent="locale: es"
      />
    )

    expect(
      screen.getByRole('navigation', { name: 'Ruta de navegación' })
    ).toHaveTextContent('GaleríaPuestosSoftware Engineer')
    expect(
      screen.getByRole('region', {
        name: 'Vista previa y descargas del currículum',
      })
    ).toBeInTheDocument()
    expect(screen.getByRole('tab', { name: 'Vista previa' })).toBeVisible()
    expect(screen.getByRole('tab', { name: 'Código fuente' })).toBeVisible()
    expect(screen.getByRole('button', { name: 'Descargar YAML' })).toBeVisible()
    expect(
      screen.getByRole('link', { name: 'Abrir en Playground' })
    ).toBeVisible()
    expect(
      screen.getByRole('heading', { name: 'Información de la plantilla' })
    ).toBeVisible()
    expect(
      screen.getByRole('heading', { name: 'Descargar como' })
    ).toBeVisible()
  })

  it('shows other available languages for position resumes', () => {
    render(<GalleryDetail item={item} language="en" target={positionTarget} />)

    expect(
      screen.getByRole('heading', { name: 'Available in other languages' })
    ).toBeInTheDocument()
    expect(screen.getByRole('link', { name: '日本語' })).toHaveAttribute(
      'href',
      '/gallery/positions/software-engineer/ja'
    )
    expect(
      screen.queryByRole('link', { name: 'English' })
    ).not.toBeInTheDocument()
  })

  it('does not show language alternatives for non-position details', () => {
    render(<GalleryDetail item={item} language="en" />)

    expect(
      screen.queryByText('Available in other languages')
    ).not.toBeInTheDocument()
  })
})
