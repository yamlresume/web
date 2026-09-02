import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { OpenInPlaygroundButton } from './OpenInPlaygroundButton'

describe('OpenInPlaygroundButton', () => {
  it('links to the playground with sample query params', () => {
    render(
      <OpenInPlaygroundButton
        sampleId="software-engineer"
        locale="en"
        language="en"
      />
    )

    expect(
      screen.getByRole('link', { name: 'Open in Playground' })
    ).toHaveAttribute('href', '/playground?sample=software-engineer&locale=en')
  })

  it('includes a selected template in the playground URL', () => {
    render(
      <OpenInPlaygroundButton
        sampleId="software-engineer"
        locale="en"
        language="en"
        engine="latex"
        template="jake"
      />
    )

    expect(
      screen.getByRole('link', { name: 'Open in Playground' })
    ).toHaveAttribute(
      'href',
      '/playground?sample=software-engineer&locale=en&engine=latex&template=jake'
    )
  })

  it('localizes the playground link', () => {
    render(
      <OpenInPlaygroundButton
        sampleId="software-engineer"
        locale="ja"
        language="ja"
      />
    )

    expect(
      screen.getByRole('link', { name: 'Playground で開く' })
    ).toHaveAttribute(
      'href',
      '/ja/playground?sample=software-engineer&locale=ja'
    )
  })
})
