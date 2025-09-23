import { siteConfig } from '@/config/site'
import {
  blogSource,
  blogSourceFr,
  blogSourceJa,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceFr,
  docsSourceJa,
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
    ...docsSourceFr.getPages(),
    ...docsSourceJa.getPages(),
    ...blogSource.getPages(),
    ...blogSourceZhCN.getPages(),
    ...blogSourceZhTW.getPages(),
    ...blogSourceFr.getPages(),
    ...blogSourceJa.getPages(),
  ]

  const scan = allPages.map(getLLMText)
  const scanned = await Promise.all(scan)

  const front = `# YAMLResume: Resumes as Code in YAML

${siteConfig.description}

${scanned.join('\n\n')}
`

  return new Response(front)
}
