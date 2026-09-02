import { describe, expect, it } from 'vitest'
import { highlightYaml } from './highlightYaml'

describe('highlightYaml', () => {
  it('returns serializable Shiki tokens for YAML source', async () => {
    const highlighted = await highlightYaml('name: Andy\nactive: true')

    expect(highlighted).toBeDefined()
    expect(highlighted).toHaveLength(2)
    expect(highlighted?.[0]).toMatchObject({
      id: 'line-0',
      tokens: expect.arrayContaining([
        expect.objectContaining({ content: 'name', color: '#85E89D' }),
        expect.objectContaining({ content: 'Andy', color: '#9ECBFF' }),
      ]),
    })
    expect(() => JSON.stringify(highlighted)).not.toThrow()
  })

  it('does not invoke Shiki when source is unavailable', async () => {
    await expect(highlightYaml()).resolves.toBeUndefined()
  })
})
