import { defaultLanguage, type Language, languages } from './config'

/**
 * Generate language-aware URLs
 *
 * @param path - The path to localize
 * @param language - The current language (defaults to defaultLanguage)
 * @returns Localized URL path
 */
export function getLocalizedUrl(
  path: string,
  language: Language = defaultLanguage
): string {
  return language === defaultLanguage ? path : `/${language}${path}`
}

/**
 * Build the `alternates.languages` map for a path across every locale.
 *
 * `x-default` points at the default-locale URL so Google has a fallback for
 * visitors whose language matches none of the localized versions.
 *
 * The root path localizes to `/zh-cn` rather than `/zh-cn/`, matching the
 * shape these alternates have always emitted.
 *
 * @param path - The unlocalized path, e.g. `/docs` or `/blog/foo`
 * @returns Map of hreflang code to localized path
 */
export function getLanguageAlternates(path: string): Record<string, string> {
  const alternates: Record<string, string> = {}
  const localize = (language: Language): string => {
    const url = getLocalizedUrl(path, language)
    return url.length > 1 ? url.replace(/\/$/, '') : url
  }

  for (const language of languages) {
    alternates[language] = localize(language)
  }

  alternates['x-default'] = localize(defaultLanguage)

  return alternates
}
