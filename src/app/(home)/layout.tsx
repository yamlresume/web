import { baseOptions } from '@/app/layout.config'
import { HomeLayout } from 'fumadocs-ui/layouts/home'
import type { ReactNode } from 'react'
import { Footer } from './components'

export default function Layout({ children }: { children: ReactNode }) {
  return (
    <HomeLayout {...baseOptions}>
      {children}
      <Footer />
    </HomeLayout>
  )
}
