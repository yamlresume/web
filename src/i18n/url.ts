import { type Language, defaultLanguage } from './config'

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
