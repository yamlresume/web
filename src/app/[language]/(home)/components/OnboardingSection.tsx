'use client'

import {
  IconBrandDocker,
  IconBrandGithub,
  IconBrandNpm,
  IconRocket,
  IconSwitchHorizontal,
  IconTerminal2,
  type Icon as TablerIcon,
} from '@tabler/icons-react'
import clsx from 'clsx'
import { useParams } from 'next/navigation'
import {
  defaultLanguage,
  getLocalizedUrl,
  type Language,
  useTranslations,
} from '@/i18n'
import { CommandLinkCard, Section } from './common'

interface InstallMethod {
  id: string
  icon: TablerIcon
  command: string
  href: string
}

export function OnboardingSection() {
  const t = useTranslations('onboarding')
  const params = useParams()
  const lang = (params?.language as Language) || defaultLanguage

  const installMethods: InstallMethod[] = [
    {
      id: 'npx',
      icon: IconRocket,
      command: 'npx create-yamlresume',
      href: '/docs/ecosystem/create-yamlresume',
    },
    {
      id: 'action',
      icon: IconBrandGithub,
      command: '- uses: yamlresume/action@v0.2.3',
      href: '/docs/ecosystem/action',
    },
    {
      id: 'npm',
      icon: IconBrandNpm,
      command: 'npm install -g yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      id: 'brew',
      icon: IconTerminal2,
      command: 'brew install yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      id: 'docker',
      icon: IconBrandDocker,
      command:
        'docker run --rm -v $(pwd):/home/yamlresume yamlresume/yamlresume new',
      href: '/docs/installation#docker-users',
    },
    {
      id: 'json2yamlresume',
      icon: IconSwitchHorizontal,
      command: 'npx json2yamlresume input.json output.yaml',
      href: '/docs/ecosystem/json2yamlresume',
    },
  ]

  return (
    <Section title={t('sectionTitle')}>
      <div
        className={clsx(
          'grid',
          'grid-cols-1',
          'gap-4',
          'md:gap-6',
          'md:grid-cols-2'
        )}
      >
        {installMethods.map((method) => {
          const title = t(`${method.id}.title`)

          return (
            <div key={method.id}>
              <CommandLinkCard
                title={title}
                description={t(`${method.id}.description`)}
                icon={method.icon}
                command={method.command}
                href={getLocalizedUrl(method.href, lang)}
                ariaLabel={title}
              />
            </div>
          )
        })}
      </div>
    </Section>
  )
}
