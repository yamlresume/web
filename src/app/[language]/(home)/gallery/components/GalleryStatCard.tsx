'use client'

import type { Icon as TablerIcon } from '@tabler/icons-react'
import { CommandLinkCard } from '@/app/[language]/(home)/components/common'

interface GalleryStatCardProps {
  value: string
  label: string
  href: string
  command: string
  icon: TablerIcon
}

export function GalleryStatCard({
  value,
  label,
  href,
  command,
  icon,
}: GalleryStatCardProps) {
  return (
    <CommandLinkCard
      title={value}
      description={label}
      href={href}
      command={command}
      icon={icon}
      ariaLabel={`${value} ${label}`}
      copyLabel={`Copy ${command}`}
    />
  )
}
