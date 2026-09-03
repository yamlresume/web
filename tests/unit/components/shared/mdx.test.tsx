import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { getMDXComponents } from '@/components/mdx/mdx'

describe('getMDXComponents', () => {
  it('returns an object that includes custom and default components', () => {
    const components = getMDXComponents()

    expect(components).toHaveProperty('Mermaid')
    expect(components).toHaveProperty('YouTube')
    expect(components).toHaveProperty('img')
    expect(components).toHaveProperty('p')
  })

  it('allows custom components to override defaults', () => {
    const CustomP = () => <p>Custom paragraph</p>
    const components = getMDXComponents({ p: CustomP })

    expect(components.p).toBe(CustomP)
  })

  it('maps img to an ImageZoom-wrapped image', () => {
    const components = getMDXComponents()
    const Img = components.img as (props: {
      src: string
      alt?: string
    }) => JSX.Element

    render(<Img src="/diagram.png" alt="Diagram" />)

    const image = screen.getByRole('img')
    expect(image).toHaveAttribute('src', '/diagram.png')
    expect(image).toHaveAttribute('alt', 'Diagram')
  })
})
