import { Logo } from '@/components'
import { getLocalizedUrl, getTranslations, type Language } from '@/i18n'

// Shared navigation options function
export function getNavigationOptions(currentLanguage: Language) {
  const t = getTranslations(currentLanguage, 'navbar')

  return {
    nav: {
      title: (
        <>
          <Logo width="24" height="24" className="dark:invert" />
          YAMLResume
        </>
      ),
      url: getLocalizedUrl('/', currentLanguage),
    },
    themeSwitch: {
      mode: 'light-dark-system' as const,
    },
    links: [
      {
        text: t('Playground'),
        url: getLocalizedUrl('/playground', currentLanguage),
        active: 'nested-url' as const,
      },
      {
        text: t('documentation'),
        url: getLocalizedUrl('/docs', currentLanguage),
        active: 'nested-url' as const,
      },
      {
        text: t('blog'),
        url: getLocalizedUrl('/blog', currentLanguage),
        active: 'nested-url' as const,
      },
    ],
    githubUrl: 'https://github.com/yamlresume/yamlresume',
    // Enable language switcher
    i18n: true,
  }
}
