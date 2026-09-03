'use client'

import { IconPlayerPlayFilled } from '@tabler/icons-react'
import clsx from 'clsx'
import { useState } from 'react'

interface YouTubeProps {
  id: string
  title: string
}

export function YouTube({ id, title }: YouTubeProps) {
  const [isPlaying, setIsPlaying] = useState(false)
  const embedUrl = `https://www.youtube-nocookie.com/embed/${id}?autoplay=1`
  const thumbnailUrl = `https://i.ytimg.com/vi/${id}/maxresdefault.jpg`
  const watchUrl = `https://www.youtube.com/watch?v=${id}`

  return (
    <div className="not-prose my-8">
      <div
        className={clsx([
          'relative',
          'aspect-video',
          'overflow-hidden',
          'border',
          'border-fd-border',
          'bg-black',
          'shadow-[6px_6px_0px_0px_rgba(0,0,0,0.12)]',
          'dark:shadow-[6px_6px_0px_0px_rgba(255,255,255,0.12)]',
        ])}
      >
        {isPlaying ? (
          <iframe
            src={embedUrl}
            title={title}
            className="absolute inset-0 h-full w-full"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            referrerPolicy="strict-origin-when-cross-origin"
            allowFullScreen
          />
        ) : (
          <button
            type="button"
            onClick={() => setIsPlaying(true)}
            aria-label={`Play video: ${title}`}
            className="group absolute inset-0 h-full w-full cursor-pointer"
          >
            {/* biome-ignore lint/performance/noImgElement: YouTube thumbnails are loaded from its image CDN */}
            <img
              src={thumbnailUrl}
              alt=""
              className="h-full w-full object-cover"
            />
            <span className="absolute inset-0 bg-black/15 transition-colors group-hover:bg-black/25" />
            <span
              className={clsx([
                'absolute',
                'left-1/2',
                'top-1/2',
                'flex',
                'h-16',
                'w-20',
                '-translate-x-1/2',
                '-translate-y-1/2',
                'items-center',
                'justify-center',
                'bg-red-600',
                'text-white',
                'shadow-lg',
                'transition-transform',
                'group-hover:scale-105',
                'group-focus-visible:scale-105',
              ])}
            >
              <IconPlayerPlayFilled aria-hidden="true" size={30} />
            </span>
          </button>
        )}
      </div>
      <noscript>
        <p className="mt-3 text-sm">
          <a href={watchUrl}>Watch {title} on YouTube</a>
        </p>
      </noscript>
    </div>
  )
}
