import Link from 'next/link'
import { Logo } from '@/components'

export function PlaygroundHeader() {
  return (
    <header className="flex items-center justify-between px-4 py-3 border-b border-neutral-800 bg-neutral-900">
      <div className="flex items-center gap-2">
        <Link
          href="/"
          className="flex items-center gap-2 hover:opacity-80 transition-opacity"
        >
          <Logo width="24" height="24" className="invert" />
          <span className="font-medium text-lg tracking-tight">YAMLResume</span>
        </Link>
        <span className="text-neutral-500">/</span>
        <span className="font-medium">Playground</span>
      </div>
      <div className="flex items-center gap-4 hidden md:flex">
        <Link
          href="/docs"
          className="text-sm text-neutral-200 hover:text-neutral-200 transition-colors"
        >
          Documentation
        </Link>
        <a
          href="https://github.com/yamlresume/yamlresume"
          target="_blank"
          rel="noreferrer"
          className="text-sm text-neutral-300 hover:text-neutral-200 transition-colors"
        >
          GitHub
        </a>
      </div>
    </header>
  )
}
