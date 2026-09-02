import { describe, expect, it } from 'vitest'
import yaml from 'yaml'
import { GET } from './route'

function getContext(resumeId: string, locale: string) {
  return { params: Promise.resolve({ resumeId, locale }) }
}

describe('gallery YAML API', () => {
  it('returns commented sample YAML with all layouts', async () => {
    const response = await GET(
      new Request('http://localhost/api/gallery/software-engineer/en'),
      getContext('software-engineer', 'en')
    )

    expect(response.status).toBe(200)
    const yamlContent = await response.text()
    const resume = yaml.parse(yamlContent)
    expect(yamlContent).toContain(
      '# yaml-language-server: $schema=https://yamlresume.dev/schema.json'
    )
    expect(yamlContent).toContain('Andy Dufresne')
    expect(resume.layouts).toHaveLength(4)
  })

  it('returns YAML with only the selected template layout', async () => {
    const response = await GET(
      new Request(
        'http://localhost/api/gallery/software-engineer/en?engine=latex&template=jake'
      ),
      getContext('software-engineer', 'en')
    )
    const yamlContent = await response.text()
    const resume = yaml.parse(yamlContent)

    expect(response.status).toBe(200)
    expect(yamlContent).toContain(
      '# yaml-language-server: $schema=https://yamlresume.dev/schema.json'
    )
    expect(resume.layouts).toHaveLength(1)
    expect(resume.layouts[0]).toMatchObject({
      engine: 'latex',
      template: 'jake',
    })
  })

  it('rejects template and sample combinations outside the gallery', async () => {
    const response = await GET(
      new Request(
        'http://localhost/api/gallery/software-engineer/en?engine=latex&template=moderncv-casual'
      ),
      getContext('software-engineer', 'en')
    )

    expect(response.status).toBe(404)
    await expect(response.json()).resolves.toEqual({
      error: 'Template not found',
    })
  })
})
