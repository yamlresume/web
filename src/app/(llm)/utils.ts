import type { docsSource } from '@/lib'
import type { InferPageType } from 'fumadocs-core/source'
import { remarkInclude } from 'fumadocs-mdx/config'
import { remark } from 'remark'
import remarkGfm from 'remark-gfm'
import remarkMdx from 'remark-mdx'

const processor = remark()
  .use(remarkMdx)
  // needed for Fumadocs MDX
  .use(remarkInclude)
  .use(remarkGfm)

export async function getLLMText(page: InferPageType<typeof docsSource>) {
  const processed = await processor.process({
    path: page.data._file.absolutePath,
    value: page.data.content,
  })

  return `# ${page.data.title}
URL: ${page.url}
${page.data.description ? `\n${page.data.description}\n` : ''}
${processed.value}`
}

export function getLLMLink(page: InferPageType<typeof docsSource>) {
  return `[${page.data.title}](${page.url})`
}
