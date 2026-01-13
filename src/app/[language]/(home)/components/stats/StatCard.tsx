'use client'

import clsx from 'clsx'
import type React from 'react'

interface StatCardProps {
  icon: React.ReactNode
  value: string | number
  label: string
  href?: string
}

export function StatCard({ icon, value, label, href }: StatCardProps) {
  const content = (
    <div
      className={clsx(
        'flex flex-col items-center gap-3 p-6',
        'bg-fd-card border border-fd-border hover:border-fd-foreground/20',
        'hover:shadow-lg transition-all duration-300'
      )}
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
    </div>
  )

  if (href) {
    return (
      <a
        href={href}
        target="_blank"
        rel="noopener noreferrer"
        className="block group hover:scale-[1.02] transition-transform"
      >
        {content}
      </a>
    )
  }

  return content
}
