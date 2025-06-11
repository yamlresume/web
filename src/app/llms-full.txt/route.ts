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

YAMLResume allows you to create and version control your resumes using YAML and
generate pixel perfect PDFs with professional layout and typesetting in a
breeze.

${scanned.join('\n\n')}
`

  return new Response(front)
}
