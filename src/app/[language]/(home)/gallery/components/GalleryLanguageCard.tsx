'use client'

import type { LanguageShowcase } from '@/lib/templates'
import { GalleryBadge } from './GalleryBadge'
import { GalleryCard } from './GalleryCard'

interface GalleryLanguageCardProps {
  showcase: LanguageShowcase
  href: string
}

export function GalleryLanguageCard({
  showcase,
  href,
}: GalleryLanguageCardProps) {
  const { item } = showcase

  return (
    <GalleryCard
      href={href}
      title={showcase.label}
      description={item.title}
      thumbnailSrc={item.thumbnailUrl}
      thumbnailAlt={`Preview of ${item.title} resume in ${showcase.label}`}
      badges={
        <>
          <GalleryBadge variant="primary">{item.category}</GalleryBadge>
          <GalleryBadge>{item.languageLabel}</GalleryBadge>
        </>
      }
    />
  )
}
