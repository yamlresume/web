import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { OpenGraph } from '@/app/api/og/components/OpenGraph'

describe('OpenGraph', () => {
  it('renders the fallback title when no title is provided', () => {
    render(<OpenGraph />)

    expect(screen.getByText('Resumes as Code in YAML')).toBeInTheDocument()
  })

  it('renders a custom title when provided', () => {
    render(<OpenGraph title="Custom Page Title" />)

    expect(screen.getByText('Custom Page Title')).toBeInTheDocument()
    expect(
      screen.queryByText('Resumes as Code in YAML')
    ).not.toBeInTheDocument()
  })

  it('renders the YAMLResume logo', () => {
    const { container } = render(<OpenGraph />)

    expect(screen.getByRole('img', { hidden: true })).toBeInTheDocument()
    expect(container.querySelector('svg')).toBeInTheDocument()
    expect(screen.getByText('YAMLResume')).toBeInTheDocument()
  })

  it('renders the gradient background', () => {
    const { container } = render(<OpenGraph />)
    const wrapper = container.firstChild as HTMLElement

    expect(wrapper.style.background).toMatch(/linear-gradient/)
  })
})
