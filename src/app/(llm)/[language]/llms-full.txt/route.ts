import { siteConfig } from '@/config/site'
import { type Language, languages } from '@/i18n/config'
import { getLLMText, getLocalizedSources } from '@/lib'

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
  const allPages = [...docs.getPages(), ...blog.getPages()]

  const scan = allPages.map(getLLMText)
  const scanned = await Promise.all(scan)

  const front = `# YAMLResume: Resumes as Code in YAML

${siteConfig.description}

${scanned.join('\n\n')}
`

  return new Response(front, {
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
    },
  })
}
