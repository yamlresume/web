import { render } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { Analytics } from '@/components/analytics'

describe('Analytics', () => {
  it('renders both Plausible script elements with expected attributes', () => {
    render(<Analytics />)

    const scripts = document.querySelectorAll('script')
    expect(scripts).toHaveLength(2)

    const externalScript = scripts[0]
    expect(externalScript).toHaveAttribute(
      'src',
      'https://plausible.ppresume.com/js/script.hash.outbound-links.js'
    )
    expect(externalScript).toHaveAttribute('data-domain', 'yamlresume.dev')
    expect(externalScript).toHaveAttribute('defer')

    const inlineScript = scripts[1]
    expect(inlineScript).toHaveAttribute('id', 'plausible-inline-init')
    expect(inlineScript).toHaveAttribute('strategy', 'afterInteractive')
    expect(inlineScript.textContent).toContain('window.plausible')
  })
})
