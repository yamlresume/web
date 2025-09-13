import { siteConfig } from '@/config/site'
import {
  blogSource,
  blogSourceZhCN,
  blogSourceZhTW,
  docsSource,
  docsSourceZhCN,
  docsSourceZhTW,
  getLLMLink,
} from '@/lib'

// cached forever
export const revalidate = false

export async function GET() {
  // Get all pages from all locales
  const allDocsPages = [
    ...docsSource.getPages(),
    ...docsSourceZhCN.getPages(),
    ...docsSourceZhTW.getPages(),
  ]

  const allBlogPages = [
    ...blogSource.getPages(),
    ...blogSourceZhCN.getPages(),
    ...blogSourceZhTW.getPages(),
  ]

  const docsLink = allDocsPages
    .map((item) => `- ${getLLMLink(item)}`)
    .join('\n')
  const blogLink = allBlogPages
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
