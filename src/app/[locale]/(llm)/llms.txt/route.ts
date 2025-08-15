import { siteConfig } from '@/config/site'
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

${siteConfig.description}

## Docs

${docsLink}

## Blog

${blogLink}
`

  return new Response(front)
}
