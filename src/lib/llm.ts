import type { InferPageType } from 'fumadocs-core/source'
import type { docsSource } from '@/lib'

export async function getLLMText(page: InferPageType<typeof docsSource>) {
  const processed = await page.data.getText('processed')
  return `# ${page.data.title}
URL: (${page.url})

${processed}`
}

export function getLLMLink(page: InferPageType<typeof docsSource>) {
  return `[${page.data.title}](${page.url})`
}
