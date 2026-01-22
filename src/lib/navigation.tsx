import { DeveloperDropdown, Logo } from '@/components'
import { getLocalizedUrl, getTranslations, i18nConfig } from '@/i18n'

// Shared navigation options function
export function getNavigationOptions(currentLanguage: string) {
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
        text: t('documentation'),
        url: getLocalizedUrl('/docs', currentLanguage),
        active: 'nested-url' as const,
      },
      {
        text: t('blog'),
        url: getLocalizedUrl('/blog', currentLanguage),
        active: 'nested-url' as const,
      },
      {
        type: 'custom' as const,
        children: (
          <DeveloperDropdown
            language={currentLanguage}
            label={t('developer')}
          />
        ),
      },
      {
        text: t('chat'),
        url: 'https://discord.gg/9SyT7mVV4K',
      },
      {
        text: t('discussions'),
        url: 'https://github.com/yamlresume/yamlresume/discussions',
      },
    ],
    githubUrl: 'https://github.com/yamlresume/yamlresume',
    // Enable language switcher
    i18n: i18nConfig,
  }
}
