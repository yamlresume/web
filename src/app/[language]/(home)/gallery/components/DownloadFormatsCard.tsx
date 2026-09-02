import { IconDownload } from '@tabler/icons-react'
import clsx from 'clsx'
import type { GalleryDetailMessages } from '@/i18n'
import type { GalleryDownload } from '@/lib/galleryRoutes'

interface DownloadFormatsCardProps {
  downloads: GalleryDownload[]
  messages: GalleryDetailMessages
}

export function DownloadFormatsCard({
  downloads,
  messages,
}: DownloadFormatsCardProps) {
  return (
    <section
      className={clsx([
        'relative',
        'flex',
        'flex-col',
        'overflow-hidden',
        'border',
        'border-fd-border',
        'bg-fd-card',
        'p-6',
        'transition-all',
        'duration-300',
        'hover:border-fd-foreground/20',
        'shadow-[6px_6px_0px_0px_rgba(0,0,0,0.08)]',
        'dark:shadow-[6px_6px_0px_0px_rgba(255,255,255,0.08)]',
        'hover:shadow-[8px_8px_0px_0px_rgba(0,0,0,0.12)]',
        'dark:hover:shadow-[8px_8px_0px_0px_rgba(255,255,255,0.12)]',
        'hover:-translate-x-0.5',
        'hover:-translate-y-0.5',
      ])}
    >
      <h2 className="mb-4 flex items-center gap-2 font-bold">
        <IconDownload aria-hidden="true" size={18} />
        {messages.downloadAs}
      </h2>
      <div className="grid grid-cols-2 gap-2">
        {downloads.map((download) => (
          <a
            key={download.format}
            href={download.href}
            download
            className={clsx([
              'inline-flex',
              'items-center',
              'justify-between',
              'gap-2',
              'border',
              'px-3',
              'py-2.5',
              'text-sm',
              'font-medium',
              'transition-colors',
              'hover:border-fd-foreground',
              'hover:bg-fd-muted',
            ])}
          >
            {messages.formats[download.format]}
            <IconDownload aria-hidden="true" size={15} />
          </a>
        ))}
      </div>
    </section>
  )
}
