'use client'

import {
  IconBrandDocker,
  IconBrandGithub,
  IconBrandNpm,
  IconShieldCheck,
} from '@tabler/icons-react'
import { useTranslations } from '@/i18n'
import { Icon } from '../Icon'
import { Section } from '../Section'
import { StatCard } from './StatCard'

interface StatsCardsProps {
  githubStars: number
  dockerPulls: number
  npmDownloads: number
}

const DEFAULT_ICON_SIZE = 32

/**
 * Client-side component for rendering statistics with localized titles.
 */
export function StatsCards({
  githubStars,
  dockerPulls,
  npmDownloads,
}: StatsCardsProps) {
  const t = useTranslations('stats')

  return (
    <Section title={t('sectionTitle')} className="max-w-5xl">
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
        <StatCard
          icon={<Icon icon={IconBrandGithub} size={DEFAULT_ICON_SIZE} />}
          value={githubStars}
          label="GitHub Stars"
          href="https://github.com/yamlresume/yamlresume"
        />
        <StatCard
          icon={<Icon icon={IconBrandDocker} size={DEFAULT_ICON_SIZE} />}
          value={dockerPulls}
          label="Docker Pulls"
          href="https://hub.docker.com/r/yamlresume/yamlresume"
        />
        <StatCard
          icon={<Icon icon={IconBrandNpm} size={DEFAULT_ICON_SIZE} />}
          value={npmDownloads}
          label="Total Downloads"
          href="https://www.npmjs.com/package/yamlresume"
        />
        <StatCard
          icon={<Icon icon={IconShieldCheck} size={DEFAULT_ICON_SIZE} />}
          value="100%"
          label="Test Coverage"
          href="https://app.codecov.io/gh/yamlresume/yamlresume"
        />
      </div>
    </Section>
  )
}
