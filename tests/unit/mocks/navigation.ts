import type { ReadonlyURLSearchParams } from 'next/navigation'

let mockParams: Record<string, string | string[]> = { language: 'en' }
let mockSearchParams = new URLSearchParams() as ReadonlyURLSearchParams

export function setMockParams(
  params: Record<string, string | string[]> = { language: 'en' }
) {
  mockParams = params
}

export function setMockSearchParams(searchParams: URLSearchParams) {
  mockSearchParams = searchParams as ReadonlyURLSearchParams
}

export function useParams() {
  return mockParams
}

export function useSearchParams() {
  return mockSearchParams
}

export function usePathname() {
  return '/'
}

export function useRouter() {
  return {
    push: vi.fn(),
    replace: vi.fn(),
    refresh: vi.fn(),
    back: vi.fn(),
    forward: vi.fn(),
    prefetch: vi.fn(),
  }
}
