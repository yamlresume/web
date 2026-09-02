import { describe, expect, it } from 'vitest'
import { highlightShell } from './highlightShell'

describe('highlightShell', () => {
  it('returns serializable highlighted shell tokens', async () => {
    const command =
      'yamlresume new --position software-engineer --language ja my-resume.yml'
    const highlighted = await highlightShell(command)

    expect(highlighted.flatMap((line) => line.tokens)).toEqual(
      expect.arrayContaining([
        expect.objectContaining({ content: 'yamlresume' }),
        expect.objectContaining({ content: '--position' }),
      ])
    )
    expect(() => JSON.stringify(highlighted)).not.toThrow()
  })
})
