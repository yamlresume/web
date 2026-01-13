import type React from 'react'
import { Card } from '../common'

interface StatCardProps {
  icon: React.ReactNode
  value: string | number
  label: string
  href?: string
}

export function StatCard({ icon, value, label, href }: StatCardProps) {
  return (
    <Card
      href={href}
      className="flex flex-col items-center gap-3 p-6 hover:scale-[1.02]"
      ariaLabel={label}
    >
      <div className="flex h-12 w-12 shrink-0 items-center justify-center">
        {icon}
      </div>
      <div className="text-3xl font-bold text-fd-foreground">
        {value.toLocaleString()}
      </div>
      <div className="text-sm text-fd-muted-foreground text-center">
        {label}
      </div>
    </Card>
  )
}
