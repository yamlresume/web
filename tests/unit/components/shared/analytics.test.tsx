import { render } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { Analytics } from '@/components/analytics'

describe('Analytics', () => {
  it('renders Plausible script elements with expected attributes', () => {
    render(<Analytics />)

    const scripts = document.querySelectorAll('script')
    expect(scripts).toHaveLength(3)

    const ppresumeScript = scripts[0]
    expect(ppresumeScript).toHaveAttribute(
      'src',
      'https://plausible.ppresume.com/js/script.hash.outbound-links.js'
    )
    expect(ppresumeScript).toHaveAttribute('data-domain', 'yamlresume.dev')
    expect(ppresumeScript).toHaveAttribute('defer')

    const textlibScript = scripts[1]
    expect(textlibScript).toHaveAttribute(
      'src',
      'https://plausible.textlib.app/js/script.hash.outbound-links.js'
    )
    expect(textlibScript).toHaveAttribute('data-domain', 'yamlresume.dev')
    expect(textlibScript).toHaveAttribute('defer')

    const inlineScript = scripts[2]
    expect(inlineScript).toHaveAttribute('id', 'plausible-inline-init')
    expect(inlineScript).toHaveAttribute('strategy', 'afterInteractive')
    expect(inlineScript.textContent).toContain('window.plausible')
  })
})
