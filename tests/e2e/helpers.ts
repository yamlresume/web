import { BASE_URL } from './server'

export async function fetchStatus(url: string): Promise<number> {
  const res = await fetch(url, { redirect: 'follow' })
  return res.status
}

export async function fetchText(url: string): Promise<string> {
  const res = await fetch(url, { redirect: 'follow' })
  if (!res.ok) {
    throw new Error(`Failed to fetch ${url}: ${res.status} ${res.statusText}`)
  }
  return res.text()
}

export async function fetchBuffer(url: string): Promise<Buffer> {
  const res = await fetch(url, { redirect: 'follow' })
  if (!res.ok) {
    throw new Error(`Failed to fetch ${url}: ${res.status} ${res.statusText}`)
  }
  const arrayBuffer = await res.arrayBuffer()
  return Buffer.from(arrayBuffer)
}

export function url(path: string): string {
  if (path.startsWith('http')) return path
  return `${BASE_URL}${path.startsWith('/') ? path : `/${path}`}`
}
