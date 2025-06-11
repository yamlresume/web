import { getLLMLink, getLLMText } from '@/lib/llm'
import { blogSource, docsSource } from '@/lib/source'

// cached forever
export const revalidate = false

export async function GET() {
  const docsLink = docsSource
    .getPages()
    .map((item) => `- ${getLLMLink(item)}`)
    .join('\n')
  const blogLink = blogSource
    .getPages()
    .map((item) => `- ${getLLMLink(item)}`)
    .join('\n')

  const front = `# YAMLResume: Resumes as Code in YAML

YAMLResume allows you to create and version control your resumes using YAML and
generate pixel perfect PDFs with professional layout and typesetting in a
breeze.

## Docs

${docsLink}

## Blog

${blogLink}
`

  return new Response(front)
}
