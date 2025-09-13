import { siteConfig } from '@/config/site'
import {
  blogSource,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceZhCN,
  docsSourceZhTW,
  getLLMText,
} from '@/lib'

// cached forever
export const revalidate = false

export async function GET() {
  // Get all pages from all locales
  const allPages = [
    ...docsSource.getPages(),
    ...docsSourceZhCN.getPages(),
    ...docsSourceZhTW.getPages(),
    ...blogSource.getPages(),
    ...blogSourceZhCN.getPages(),
    ...blogSourceZhTW.getPages(),
  ]

  const scan = allPages.map(getLLMText)
  const scanned = await Promise.all(scan)

  const front = `# YAMLResume: Resumes as Code in YAML

${siteConfig.description}

${scanned.join('\n\n')}
`

  return new Response(front)
}
