import { siteConfig } from '@/config/site'
import { type Language, languages } from '@/i18n/config'
import { getLLMLink, getLocalizedSources } from '@/lib'

function isSupportedLanguage(value: Language) {
  return languages.includes(value)
}

export async function GET(
  _req: Request,
  props: { params: Promise<{ language: Language }> }
) {
  const { language } = await props.params

  if (!isSupportedLanguage(language)) {
    return new Response('Not found', { status: 404 })
  }

  const { docs, blog } = getLocalizedSources(language)
  const docsLink = docs
    .getPages()
    .map((item) => `- ${getLLMLink(item)}`)
    .join('\n')
  const blogLink = blog
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

  return new Response(front, {
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
    },
  })
}
