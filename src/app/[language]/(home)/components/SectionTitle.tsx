import type { ReactNode } from 'react'

export function SectionTitle({ title }: { title: ReactNode }) {
  return <h2 className="text-3xl font-bold mb-8 text-center">{title}</h2>
}
