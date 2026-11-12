'use client'

import clsx from 'clsx'
import Image from 'next/image'
import Link from 'next/link'
import { useState } from 'react'

interface GalleryCardProps {
  href: string
  title: string
  description: string
  thumbnailSrc: string
  thumbnailAlt?: string
  badges: React.ReactNode
  footer?: React.ReactNode
}

export function GalleryCard({
  href,
  title,
  description,
  thumbnailSrc,
  thumbnailAlt,
  badges,
  footer,
}: GalleryCardProps) {
  const [imageError, setImageError] = useState(false)

  return (
    <Link
      href={href}
      className={clsx([
        'group',
        'flex',
        'flex-col',
        'h-full',
        'overflow-hidden',
        'border',
        'border-slate-200',
        'bg-white',
        'shadow-[6px_6px_0px_0px_rgba(0,0,0,0.08)]',
        'transition-all',
        'duration-200',
        'hover:shadow-[8px_8px_0px_0px_rgba(0,0,0,0.12)]',
        'hover:-translate-x-0.5',
        'hover:-translate-y-0.5',
      ])}
    >
      <div
        className={clsx([
          'relative',
          'aspect-[3/4]',
          'w-full',
          'overflow-hidden',
          'bg-white',
          'p-4',
        ])}
      >
        {!imageError && (
          <Image
            src={thumbnailSrc}
            alt={thumbnailAlt ?? title}
            fill
            className={clsx([
              'object-cover',
              'object-top',
              'transition-transform',
              'duration-300',
              'group-hover:scale-[1.02]',
            ])}
            sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
            onError={() => setImageError(true)}
          />
        )}
      </div>

      <div className="flex flex-col flex-1 pt-4 px-4 pb-4">
        <div
          className={clsx([
            'flex',
            'flex-wrap',
            'items-center',
            'gap-2',
            'mb-2',
          ])}
        >
          {badges}
        </div>

        <h3 className="font-bold text-lg mb-1">{title}</h3>

        <p className="text-sm text-slate-500 mb-3 line-clamp-2">
          {description}
        </p>

        {footer && <div className="mt-auto">{footer}</div>}
      </div>
    </Link>
  )
}
