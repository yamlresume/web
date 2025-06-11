import { baseOptions } from '@/app/layout.config'
import { docsSource } from '@/lib/source'
import { DocsLayout } from 'fumadocs-ui/layouts/docs'
import type { ReactNode } from 'react'

export default function Layout({ children }: { children: ReactNode }) {
  return (
    <DocsLayout tree={docsSource.pageTree} {...baseOptions}>
      {children}
    </DocsLayout>
  )
}
