'use client'

import type { GalleryItem } from '@/lib/gallery'
import { GalleryBadge } from './GalleryBadge'
import { GalleryCard } from './GalleryCard'

interface GalleryPositionCardProps {
  item: GalleryItem
  href: string
}

export function GalleryPositionCard({ item, href }: GalleryPositionCardProps) {
  const footer = (
    <div className="flex flex-wrap gap-1">
      {item.tags.slice(0, 3).map((tag) => (
        <GalleryBadge key={tag} variant="outline">
          #{tag}
        </GalleryBadge>
      ))}
    </div>
  )

  return (
    <GalleryCard
      href={href}
      title={item.title}
      description={item.description}
      thumbnailSrc={item.thumbnailUrl}
      thumbnailAlt={`Preview of ${item.title} resume`}
      badges={
        <>
          <GalleryBadge variant="primary">{item.category}</GalleryBadge>
          <GalleryBadge>{item.languageLabel}</GalleryBadge>
        </>
      }
      footer={footer}
    />
  )
}
