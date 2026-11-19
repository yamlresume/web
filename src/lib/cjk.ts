/**
 * Markdown treats a newline inside a paragraph as a soft break. MDX emits that
 * break as a literal `"\n"`, which the browser collapses into one space, so
 * wrapping CJK prose at 80 columns leaves stray gaps between ideographs
 * ("第二\n条" renders as "第二 条").
 *
 * This remark plugin drops the soft break when the characters on both sides are
 * CJK, and leaves every other space untouched — notably the gap between Latin
 * and CJK, which typography conventions ask for.
 */

export interface MdastNode {
  type: string
  value?: unknown
  children?: MdastNode[]
}

const CJK_RANGES = [
  '2e80-2eff', // CJK Radicals Supplement
  '2f00-2fdf', // Kangxi Radicals
  '3000-303f', // CJK Symbols and Punctuation
  '3040-309f', // Hiragana
  '30a0-30ff', // Katakana
  '3100-312f', // Bopomofo
  '3130-318f', // Hangul Compatibility Jamo
  '3190-319f', // Kanbun
  '31a0-31bf', // Bopomofo Extended
  '31f0-31ff', // Katakana Phonetic Extensions
  '3200-32ff', // Enclosed CJK Letters and Months
  '3300-33ff', // CJK Compatibility
  '3400-4dbf', // CJK Unified Ideographs Extension A
  '4e00-9fff', // CJK Unified Ideographs
  'a960-a97f', // Hangul Jamo Extended-A
  'ac00-d7af', // Hangul Syllables
  'f900-faff', // CJK Compatibility Ideographs
  'fe10-fe19', // Vertical Forms
  'fe30-fe6f', // CJK Compatibility Forms
  'ff00-ffef', // Halfwidth and Fullwidth Forms
]

const CJK = CJK_RANGES.map((range) =>
  range
    .split('-')
    .map((code) => `\\u${code}`)
    .join('-')
).join('')

/** Stand-in for a missing sibling so `edgeChar` stays total. */
const EMPTY: MdastNode = { type: 'text', value: '' }

const CJK_CHAR = new RegExp(`^[${CJK}]$`)
const CJK_LINE_BREAK = new RegExp(
  `([${CJK}])[ \\t]*\\n[ \\t]*(?=[${CJK}])`,
  'g'
)
const LEADING_LINE_BREAK = /^[ \t]*\n[ \t]*/
const TRAILING_LINE_BREAK = /[ \t]*\n[ \t]*$/
const WHITESPACE_ONLY = /^[ \t]*\n[ \t]*$/

function isCjk(char: string | null | undefined): boolean {
  return typeof char === 'string' && CJK_CHAR.test(char)
}

/**
 * First or last visible character of a subtree, skipping whitespace and nodes
 * that hold no text (hard breaks, images).
 */
function edgeChar(node: MdastNode, side: 'first' | 'last'): string | null {
  if (node.type === 'break') return null

  if (typeof node.value === 'string') {
    const value =
      side === 'first' ? node.value.trimStart() : node.value.trimEnd()
    if (value.length === 0) return null
    return side === 'first' ? value[0] : value[value.length - 1]
  }

  const children = node.children ?? []
  const ordered = side === 'first' ? children : [...children].reverse()
  for (const child of ordered) {
    const char = edgeChar(child, side)
    if (char !== null) return char
  }

  return null
}

/**
 * A soft break can sit inside a text node ("第二\n条"), at its edge when a
 * link, inline code or emphasis interrupts the line ("…指南\n[了解…]"), or
 * between two such nodes with a whitespace-only text in between.
 */
function joinTextNode(
  node: MdastNode,
  siblings: MdastNode[],
  index: number
): void {
  if (typeof node.value !== 'string') return

  let value = node.value
  if (value.includes('\n')) value = value.replace(CJK_LINE_BREAK, '$1')

  const joinsPrevious = isCjk(edgeChar(siblings[index - 1] ?? EMPTY, 'last'))
  const joinsNext = isCjk(edgeChar(siblings[index + 1] ?? EMPTY, 'first'))

  if (WHITESPACE_ONLY.test(value)) {
    node.value = joinsPrevious && joinsNext ? '' : value
    return
  }

  if (joinsPrevious && LEADING_LINE_BREAK.test(value)) {
    const stripped = value.replace(LEADING_LINE_BREAK, '')
    if (isCjk(stripped[0])) value = stripped
  }

  if (joinsNext && TRAILING_LINE_BREAK.test(value)) {
    const stripped = value.replace(TRAILING_LINE_BREAK, '')
    if (isCjk(stripped[stripped.length - 1])) value = stripped
  }

  node.value = value
}

function transformNode(node: MdastNode): void {
  const children = node.children
  if (!children?.length) return

  for (let index = 0; index < children.length; index += 1) {
    if (children[index].type === 'text') {
      joinTextNode(children[index], children, index)
    }
  }

  for (const child of children) transformNode(child)
}

export function remarkCjkLineBreaks() {
  return (tree: MdastNode) => transformNode(tree)
}

const CJK_SPACE_CJK = new RegExp(`([${CJK}])[ \\t\\n]+(?=[${CJK}])`, 'g')

/**
 * The same rule for frontmatter values. YAML folds a wrapped `description`
 * into a space, and that string never reaches the markdown pipeline, so the
 * metadata would keep gaps the body no longer has.
 */
export function tightenCjkSpacing(value: string): string {
  return value.replace(CJK_SPACE_CJK, '$1')
}
