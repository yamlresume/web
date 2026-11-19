import { remark } from 'remark'
import remarkMdx from 'remark-mdx'
import { describe, expect, it } from 'vitest'
import { type MdastNode, remarkCjkLineBreaks, tightenCjkSpacing } from './mdx'

const processor = remark().use(remarkMdx).use(remarkCjkLineBreaks)

function textOf(node: MdastNode): string {
  if (typeof node.value === 'string') return node.value
  return (node.children ?? []).map(textOf).join('')
}

function firstParagraph(source: string): MdastNode {
  const tree = processor.runSync(
    processor.parse(source)
  ) as unknown as MdastNode
  const paragraph = tree.children?.find((child) => child.type === 'paragraph')
  if (!paragraph) throw new Error('expected a paragraph')
  return paragraph
}

describe('remarkCjkLineBreaks', () => {
  it('removes a soft break between two ideographs', () => {
    expect(textOf(firstParagraph('第二\n条路径'))).toBe('第二条路径')
  })

  it('handles the wrapped intro from the v0.18 post', () => {
    const paragraph = firstParagraph(
      '让 YAMLResume 在 LaTeX 之外拥有第二\n条 PDF 排版路径，并改进了\n链接样式。'
    )

    expect(textOf(paragraph)).toBe(
      '让 YAMLResume 在 LaTeX 之外拥有第二条 PDF 排版路径，并改进了链接样式。'
    )
  })

  it('keeps the space between Latin and CJK', () => {
    expect(textOf(firstParagraph('使用 Typst\n引擎渲染'))).toBe(
      '使用 Typst\n引擎渲染'
    )
    expect(textOf(firstParagraph('使用\nTypst 引擎'))).toBe('使用\nTypst 引擎')
    expect(textOf(firstParagraph('YAMLResume\n现已发布'))).toBe(
      'YAMLResume\n现已发布'
    )
  })

  it('joins across a link boundary', () => {
    const paragraph = firstParagraph(
      '阅读 [Typst 引擎指南](/zh-cn/docs/layouts/typst)\n了解所有选项。'
    )
    const link = paragraph.children?.[1]
    const trailing = paragraph.children?.[2]

    expect(link?.type).toBe('link')
    expect(trailing?.value).toBe('了解所有选项。')
    expect(textOf(paragraph)).toBe('阅读 Typst 引擎指南了解所有选项。')
  })

  it('joins across an inline code boundary', () => {
    const paragraph = firstParagraph('使用 `layouts` 数组\n覆盖原有配置。')
    const trailing = paragraph.children?.[2]

    expect(trailing?.value).toBe(' 数组覆盖原有配置。')
  })

  it('joins across an emphasis boundary', () => {
    const paragraph = firstParagraph('**粗体**\n中文后接。')

    expect(paragraph.children?.[1]?.value).toBe('中文后接。')
  })

  it('drops a whitespace-only text node between CJK nodes', () => {
    const paragraph = firstParagraph(
      '[链接](https://a.example)\n[链接](https://b.example)'
    )
    const between = paragraph.children?.[1]

    expect(between?.type).toBe('text')
    expect(between?.value).toBe('')
  })

  it('keeps a whitespace-only text node between non-CJK nodes', () => {
    const paragraph = firstParagraph(
      '[foo](https://a.example)\n[bar](https://b.example)'
    )
    const between = paragraph.children?.[1]

    expect(between?.value).toBe('\n')
  })

  it('keeps the soft break when only one side is CJK', () => {
    expect(textOf(firstParagraph('foo\n条路径'))).toBe('foo\n条路径')
    expect(textOf(firstParagraph('第二条\nfoo'))).toBe('第二条\nfoo')
  })

  it('leaves code blocks and inline code untouched', () => {
    const tree = processor.runSync(
      processor.parse('```text\n第二\n条\n```\n\n`第二\n条`')
    ) as unknown as MdastNode
    const code = tree.children?.find((child) => child.type === 'code')
    const paragraph = tree.children?.find((child) => child.type === 'paragraph')
    const inlineCode = paragraph?.children?.[0]

    expect(code?.value).toBe('第二\n条')
    expect(inlineCode?.value).toBe('第二\n条')
  })

  it('preserves hard breaks', () => {
    const paragraph = firstParagraph('中文  \n接着')
    const types = paragraph.children?.map((child) => child.type)

    expect(types).toEqual(['text', 'break', 'text'])
    expect(paragraph.children?.[0]?.value).toBe('中文')
    expect(paragraph.children?.[2]?.value).toBe('接着')
  })

  it('joins CJK punctuation as well', () => {
    expect(
      textOf(firstParagraph('新增 Italian，\n将样例库扩充到 20 份。'))
    ).toBe('新增 Italian，将样例库扩充到 20 份。')
    expect(textOf(firstParagraph('覆盖更广泛的技术、\n设计、商业职位。'))).toBe(
      '覆盖更广泛的技术、设计、商业职位。'
    )
  })

  it('recurses into nested block content', () => {
    const tree = processor.runSync(
      processor.parse('- 第一\n  条说明\n\n> 引用中的第二\n> 条内容')
    ) as unknown as MdastNode
    const list = tree.children?.[0]
    const quote = tree.children?.[1]

    expect(textOf(list as MdastNode)).toBe('第一条说明')
    expect(textOf(quote as MdastNode)).toBe('引用中的第二条内容')
  })

  it('is a no-op for pure Latin content', () => {
    const source = 'foo\nbar baz\nqux'

    expect(textOf(firstParagraph(source))).toBe('foo\nbar baz\nqux')
  })

  it('returns a remark transformer', () => {
    const transformer = remarkCjkLineBreaks()

    expect(typeof transformer).toBe('function')
  })
})

describe('tightenCjkSpacing', () => {
  it('removes a space that YAML folded between two ideographs', () => {
    expect(tightenCjkSpacing('10 份新 样例简历')).toBe('10 份新样例简历')
    expect(tightenCjkSpacing('将样例库从 ~4GB 缩减 到 866MB')).toBe(
      '将样例库从 ~4GB 缩减到 866MB'
    )
  })

  it('keeps the space between Latin and CJK', () => {
    expect(tightenCjkSpacing('新增 Typst 引擎')).toBe('新增 Typst 引擎')
    expect(tightenCjkSpacing('Italian 语言区域')).toBe('Italian 语言区域')
  })

  it('leaves spaced Latin text alone', () => {
    expect(tightenCjkSpacing('hello world')).toBe('hello world')
  })

  it('handles a block scalar that keeps its newline', () => {
    expect(tightenCjkSpacing('引入了章节别名\n和重排功能。\n')).toBe(
      '引入了章节别名和重排功能。\n'
    )
  })
})
