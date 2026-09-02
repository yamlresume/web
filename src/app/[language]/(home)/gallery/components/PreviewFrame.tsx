'use client'

import {
  IconArrowsMaximize,
  IconArrowsMinimize,
  IconExternalLink,
} from '@tabler/icons-react'
import clsx from 'clsx'
import Image from 'next/image'
import { useEffect, useRef, useState } from 'react'
import type { GalleryDetailMessages } from '@/i18n'
import type { GalleryPreview } from '@/lib/galleryRoutes'

interface PreviewFrameProps {
  preview: GalleryPreview
  imageAlt: string
  messages: GalleryDetailMessages['actions']
}

export function PreviewFrame({
  preview,
  imageAlt,
  messages,
}: PreviewFrameProps) {
  const containerRef = useRef<HTMLDivElement>(null)
  const [canFullscreen, setCanFullscreen] = useState(false)
  const [isFullscreen, setIsFullscreen] = useState(false)

  useEffect(() => {
    const container = containerRef.current
    setCanFullscreen(
      Boolean(document.fullscreenEnabled && container?.requestFullscreen)
    )

    function handleFullscreenChange() {
      setIsFullscreen(document.fullscreenElement === container)
    }

    document.addEventListener('fullscreenchange', handleFullscreenChange)
    return () => {
      document.removeEventListener('fullscreenchange', handleFullscreenChange)
    }
  }, [])

  async function toggleFullscreen() {
    if (isFullscreen) {
      await document.exitFullscreen?.()
      return
    }

    await containerRef.current?.requestFullscreen?.()
  }

  return (
    <div
      ref={containerRef}
      className="flex flex-col bg-fd-background fullscreen:h-screen"
    >
      <div className="flex items-center justify-end gap-1 border-b border-fd-border bg-fd-background p-2">
        <a
          href={preview.src}
          target="_blank"
          rel="noopener noreferrer"
          aria-label={messages.openInNewTab}
          title={messages.openInNewTab}
          className={clsx([
            'inline-flex',
            'items-center',
            'justify-center',
            'size-9',
            'rounded-md',
            'text-fd-muted-foreground',
            'hover:bg-fd-muted',
            'hover:text-fd-foreground',
            'focus-visible:outline-none',
            'focus-visible:ring-2',
            'focus-visible:ring-fd-primary',
          ])}
        >
          <IconExternalLink aria-hidden="true" size={17} />
        </a>
        <button
          type="button"
          disabled={!canFullscreen}
          aria-label={
            isFullscreen ? messages.exitFullscreen : messages.fullscreen
          }
          title={isFullscreen ? messages.exitFullscreen : messages.fullscreen}
          onClick={() => void toggleFullscreen()}
          className={clsx([
            'inline-flex',
            'items-center',
            'justify-center',
            'size-9',
            'rounded-md',
            'text-fd-muted-foreground',
            'hover:bg-fd-muted',
            'hover:text-fd-foreground',
            'focus-visible:outline-none',
            'focus-visible:ring-2',
            'focus-visible:ring-fd-primary',
            'disabled:cursor-not-allowed',
            'disabled:opacity-40',
          ])}
        >
          {isFullscreen ? (
            <IconArrowsMinimize aria-hidden="true" size={17} />
          ) : (
            <IconArrowsMaximize aria-hidden="true" size={17} />
          )}
        </button>
      </div>

      <div className="relative aspect-[210/297] w-full flex-1 overflow-hidden bg-fd-muted fullscreen:aspect-auto">
        <Image
          src={preview.src}
          alt={imageAlt}
          fill
          priority
          className="object-contain object-top"
          sizes="(max-width: 1280px) 100vw, 900px"
        />
      </div>
    </div>
  )
}
