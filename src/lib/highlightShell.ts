import { codeToTokens } from 'shiki'
import type { HighlightedYaml } from './highlightYaml'

const highlightedShellCache = new Map<string, Promise<HighlightedYaml>>()

export function highlightShell(command: string): Promise<HighlightedYaml> {
  const cached = highlightedShellCache.get(command)
  if (cached) return cached

  const highlighted = codeToTokens(command, {
    lang: 'shellscript',
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

  highlightedShellCache.set(command, highlighted)
  return highlighted
}
