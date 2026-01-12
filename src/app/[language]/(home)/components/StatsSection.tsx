import {
  IconBrandDocker,
  IconBrandGithub,
  IconBrandNpm,
  IconShieldCheck,
} from '@tabler/icons-react'
import { Section } from './Section'

interface StatCardProps {
  icon: React.ReactNode
  value: string | number
  label: string
  href?: string
}

function StatCard({ icon, value, label, href }: StatCardProps) {
  const content = (
    <div className="flex flex-col items-center gap-3 p-6 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 hover:shadow-lg transition-shadow">
      <div className="flex h-12 w-12 shrink-0 items-center justify-center">
        {icon}
      </div>
      <div className="text-3xl font-bold text-gray-900 dark:text-white">
        {value.toLocaleString()}
      </div>
      <div className="text-sm text-gray-600 dark:text-gray-400 text-center">
        {label}
      </div>
    </div>
  )

  if (href) {
    return (
      <a
        href={href}
        target="_blank"
        rel="noopener noreferrer"
        className="block hover:scale-105 transition-transform"
      >
        {content}
      </a>
    )
  }

  return content
}

async function fetchGitHubStars(): Promise<number> {
  try {
    const res = await fetch(
      'https://api.github.com/repos/yamlresume/yamlresume',
      {
        next: { revalidate: 3600 }, // Cache for 1 hour
      }
    )
    if (!res.ok) return 0
    const data = await res.json()
    return data.stargazers_count || 0
  } catch {
    return 0
  }
}

async function fetchDockerPulls(): Promise<number> {
  try {
    const res = await fetch(
      'https://hub.docker.com/v2/repositories/yamlresume/yamlresume/',
      {
        next: { revalidate: 3600 },
      }
    )
    if (!res.ok) return 0
    const data = await res.json()
    return data.pull_count || 0
  } catch {
    return 0
  }
}

async function fetchNpmDownloads(): Promise<number> {
  try {
    const res = await fetch(
      'https://api.npmjs.org/downloads/point/1970-01-01:2099-12-31/yamlresume',
      {
        next: { revalidate: 3600 },
      }
    )
    if (!res.ok) return 0
    const data = await res.json()
    return data.downloads || 0
  } catch {
    return 0
  }
}

export async function StatsSection() {
  const [githubStars, dockerPulls, npmDownloads] = await Promise.all([
    fetchGitHubStars(),
    fetchDockerPulls(),
    fetchNpmDownloads(),
  ])

  return (
    <Section title="Trusted by Developers" className="max-w-5xl">
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
        <StatCard
          icon={<IconBrandGithub size={32} />}
          value={githubStars}
          label="GitHub Stars"
          href="https://github.com/yamlresume/yamlresume"
        />
        <StatCard
          icon={<IconBrandDocker size={32} />}
          value={dockerPulls}
          label="Docker Pulls"
          href="https://hub.docker.com/r/yamlresume/yamlresume"
        />
        <StatCard
          icon={<IconBrandNpm size={32} />}
          value={npmDownloads}
          label="Total Downloads"
          href="https://www.npmjs.com/package/yamlresume"
        />
        <StatCard
          icon={<IconShieldCheck size={32} />}
          value="100%"
          label="Test Coverage"
          href="https://app.codecov.io/gh/yamlresume/yamlresume"
        />
      </div>
    </Section>
  )
}
