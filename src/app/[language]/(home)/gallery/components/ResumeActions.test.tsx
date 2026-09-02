import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { getGalleryDetailMessages } from '@/i18n'
import { makeGalleryItem } from './fixtures'
import { ResumeActions } from './ResumeActions'

describe('ResumeActions', () => {
  const item = makeGalleryItem()

  it('renders YAML download and playground buttons', () => {
    render(
      <ResumeActions
        item={item}
        language="en"
        messages={getGalleryDetailMessages('en')}
        yamlContent="yaml"
      />
    )

    expect(
      screen.getByRole('button', { name: 'Download YAML' })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('link', { name: 'Open in Playground' })
    ).toBeInTheDocument()
  })
})
