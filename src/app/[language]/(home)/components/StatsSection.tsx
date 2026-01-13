import { StatsCards } from './stats'

/**
 * Generic helper to fetch data from an API with a default value fallback.
 */
async function fetchWithDefault<_T>(
  url: string,
  defaultValue: number,
  // biome-ignore lint/suspicious/noExplicitAny: ignore
  transform: (data: any) => number
): Promise<number> {
  try {
    const res = await fetch(url, {
      next: { revalidate: 3600 }, // Cache for 1 hour
    })
    if (!res.ok) return defaultValue

    const data = await res.json()
    return transform(data) || defaultValue
  } catch {
    return defaultValue
  }
}

async function fetchGitHubStars(): Promise<number> {
  return fetchWithDefault(
    'https://api.github.com/repos/yamlresume/yamlresume',
    1151,
    (data) => data.stargazers_count
  )
}

async function fetchDockerPulls(): Promise<number> {
  return fetchWithDefault(
    'https://hub.docker.com/v2/repositories/yamlresume/yamlresume/',
    2021,
    (data) => data.pull_count
  )
}

async function fetchNpmDownloads(): Promise<number> {
  return fetchWithDefault(
    'https://api.npmjs.org/downloads/point/1970-01-01:2099-12-31/yamlresume',
    3696,
    (data) => data.downloads
  )
}

export async function StatsSection() {
  const [githubStars, dockerPulls, npmDownloads] = await Promise.all([
    fetchGitHubStars(),
    fetchDockerPulls(),
    fetchNpmDownloads(),
  ])

  return (
    <StatsCards
      githubStars={githubStars}
      dockerPulls={dockerPulls}
      npmDownloads={npmDownloads}
    />
  )
}
