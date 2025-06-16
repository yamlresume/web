import { siteConfig } from '@/config/site'
import { getLLMText } from '@/lib/llm'
import { blogSource, docsSource } from '@/lib/source'

// cached forever
export const revalidate = false

export async function GET() {
  const scan = [...docsSource.getPages(), ...blogSource.getPages()].map(
    getLLMText
  )
  const scanned = await Promise.all(scan)

  const front = `# YAMLResume: Resumes as Code in YAML

${siteConfig.description}

${scanned.join('\n\n')}
`

  return new Response(front)
}
