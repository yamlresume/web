'use client'

import type { TemplateShowcase } from '@/lib/templates'
import { GalleryBadge } from './GalleryBadge'
import { GalleryCard } from './GalleryCard'

interface GalleryTemplateCardProps {
  showcase: TemplateShowcase
  href: string
}

export function GalleryTemplateCard({
  showcase,
  href,
}: GalleryTemplateCardProps) {
  return (
    <GalleryCard
      href={href}
      title={showcase.name}
      description={showcase.description}
      thumbnailSrc={showcase.imageUrl}
      thumbnailAlt={`Preview of ${showcase.name} template`}
      badges={
        <>
          <GalleryBadge variant="mono">{showcase.engine}</GalleryBadge>
          <GalleryBadge variant="outline">{showcase.style}</GalleryBadge>
        </>
      }
    />
  )
}
