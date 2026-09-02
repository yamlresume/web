import userEvent from '@testing-library/user-event'
import { render, screen, setMockParams } from '@tests/test-utils'
import * as PlaygroundModule from '@yamlresume/playground'
import { beforeAll, describe, expect, it, vi } from 'vitest'
import { PlaygroundBody } from '@/app/[language]/playground/components/Body'

interface PlaygroundProps {
  yaml: string
  onChange: (value: string) => void
  filename: string
  messages: {
    tooltips: {
      copy: string
      undo: string
      redo: string
      clear: string
      print: string
      openInNewTab: string
      download: string
    }
  }
}

beforeAll(() => {
  vi.spyOn(PlaygroundModule, 'Playground').mockImplementation(
    ({ yaml, onChange, messages }: PlaygroundProps) => (
      <div data-testid="playground-mock">
        <pre data-testid="playground-yaml">{yaml}</pre>
        <button type="button" onClick={() => onChange('updated: true')}>
          Update YAML
        </button>
        <span data-testid="copy-tooltip">{messages.tooltips.copy}</span>
        <span data-testid="undo-tooltip">{messages.tooltips.undo}</span>
        <span data-testid="redo-tooltip">{messages.tooltips.redo}</span>
        <span data-testid="clear-tooltip">{messages.tooltips.clear}</span>
        <span data-testid="print-tooltip">{messages.tooltips.print}</span>
        <span data-testid="open-tooltip">{messages.tooltips.openInNewTab}</span>
        <span data-testid="download-tooltip">{messages.tooltips.download}</span>
      </div>
    )
  )
})

describe('PlaygroundBody', () => {
  it('renders the mocked Playground with default resume content', () => {
    setMockParams({ language: 'en' })
    render(<PlaygroundBody />)

    const yaml = screen.getByTestId('playground-yaml')
    expect(yaml).toHaveTextContent('Andy Dufresne')
    expect(yaml).toHaveTextContent('yaml-language-server:')
    expect(yaml).toHaveTextContent('locale:')
  })

  it('keeps editor changes in memory for the current session', async () => {
    const user = userEvent.setup()
    render(<PlaygroundBody />)

    await user.click(screen.getByRole('button', { name: 'Update YAML' }))

    expect(screen.getByTestId('playground-yaml')).toHaveTextContent(
      'updated: true'
    )
  })

  it('renders English tooltip messages by default', () => {
    setMockParams({ language: 'en' })
    render(<PlaygroundBody />)

    expect(screen.getByTestId('copy-tooltip')).toHaveTextContent('Copy')
    expect(screen.getByTestId('undo-tooltip')).toHaveTextContent('Undo')
    expect(screen.getByTestId('redo-tooltip')).toHaveTextContent('Redo')
    expect(screen.getByTestId('clear-tooltip')).toHaveTextContent('Clear')
    expect(screen.getByTestId('print-tooltip')).toHaveTextContent('Print')
    expect(screen.getByTestId('open-tooltip')).toHaveTextContent(
      'Open in New Tab'
    )
    expect(screen.getByTestId('download-tooltip')).toHaveTextContent('Download')
  })

  it('renders localized tooltip messages for Spanish', () => {
    setMockParams({ language: 'es' })
    render(<PlaygroundBody />)

    expect(screen.getByTestId('copy-tooltip')).toHaveTextContent('Copiar')
    expect(screen.getByTestId('undo-tooltip')).toHaveTextContent('Deshacer')
    expect(screen.getByTestId('redo-tooltip')).toHaveTextContent('Rehacer')
    expect(screen.getByTestId('clear-tooltip')).toHaveTextContent('Limpiar')
    expect(screen.getByTestId('print-tooltip')).toHaveTextContent('Imprimir')
    expect(screen.getByTestId('open-tooltip')).toHaveTextContent(
      'Abrir en una pestaña nueva'
    )
    expect(screen.getByTestId('download-tooltip')).toHaveTextContent(
      'Descargar'
    )
  })
})
