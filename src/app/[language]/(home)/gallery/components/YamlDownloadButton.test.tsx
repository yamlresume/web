import { fireEvent, render, screen } from '@testing-library/react'
import { describe, expect, it, vi } from 'vitest'
import { YamlDownloadButton } from './YamlDownloadButton'

describe('YamlDownloadButton', () => {
  it('renders disabled when no YAML content is provided', () => {
    render(<YamlDownloadButton />)

    expect(screen.getByRole('button', { name: 'Download YAML' })).toBeDisabled()
  })

  it('creates a downloadable YAML blob when clicked', () => {
    const createObjectURL = vi.fn(() => 'blob://yaml')
    const revokeObjectURL = vi.fn()
    global.URL.createObjectURL = createObjectURL
    global.URL.revokeObjectURL = revokeObjectURL

    render(
      <YamlDownloadButton yamlContent="name: Andy" filename="resume.yml" />
    )

    const button = screen.getByRole('button', { name: 'Download YAML' })
    expect(button).not.toBeDisabled()

    fireEvent.click(button)

    expect(createObjectURL).toHaveBeenCalledWith(
      expect.objectContaining({ type: 'text/yaml' })
    )
    expect(revokeObjectURL).toHaveBeenCalledWith('blob://yaml')
  })
})
