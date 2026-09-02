'use client'

import { IconArrowRight, type Icon as TablerIcon } from '@tabler/icons-react'
import Link from 'next/link'

interface GallerySectionProps {
  title: string
  description?: string
  icon?: TablerIcon
  action?: {
    href: string
    label: string
  }
  children: React.ReactNode
}

export function GallerySection({
  title,
  description,
  icon: Icon,
  action,
  children,
}: GallerySectionProps) {
  return (
    <section className="fd-container px-6 py-12">
      <div className="mb-8 border-b border-fd-border pb-4">
        <div className="flex items-center gap-3">
          {Icon && (
            <Icon
              aria-hidden="true"
              className="text-fd-primary"
              size={24}
              stroke={1.75}
            />
          )}
          <h2 className="text-2xl font-bold">{title}</h2>
        </div>
        {description && (
          <p className="mt-2 text-fd-muted-foreground">{description}</p>
        )}
      </div>

      {children}

      {action && (
        <div className="mt-10 flex justify-center">
          <Link
            href={action.href}
            className="group inline-flex items-center gap-2 rounded-lg border border-fd-border bg-fd-background px-5 py-2.5 text-sm font-semibold transition-colors hover:border-fd-primary hover:bg-fd-muted hover:text-fd-primary"
          >
            {action.label}
            <IconArrowRight
              aria-hidden="true"
              size={16}
              className="transition-transform group-hover:translate-x-1"
            />
          </Link>
        </div>
      )}
    </section>
  )
}
