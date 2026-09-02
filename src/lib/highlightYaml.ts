import { codeToTokens } from 'shiki'

export interface HighlightedYamlToken {
  id: string
  content: string
  color?: string
  fontStyle?: number
}

export interface HighlightedYamlLine {
  id: string
  tokens: HighlightedYamlToken[]
}

export type HighlightedYaml = HighlightedYamlLine[]

const highlightedYamlCache = new Map<string, Promise<HighlightedYaml>>()

export function highlightYaml(
  yamlContent?: string
): Promise<HighlightedYaml | undefined> {
  if (!yamlContent) {
    return Promise.resolve(undefined)
  }

  const cached = highlightedYamlCache.get(yamlContent)
  if (cached) {
    return cached
  }

  const highlighted = codeToTokens(yamlContent, {
    lang: 'yaml',
    theme: 'github-dark',
  }).then(({ tokens }) =>
    tokens.map((line, lineIndex) => ({
      id: `line-${lineIndex}`,
      tokens: line.map(({ content, color, fontStyle, offset }) => ({
        id: `token-${offset}`,
        content,
        color,
        fontStyle,
      })),
    }))
  )
  highlightedYamlCache.set(yamlContent, highlighted)

  return highlighted
}
