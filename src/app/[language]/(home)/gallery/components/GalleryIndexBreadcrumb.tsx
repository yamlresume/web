import { IconChevronRight } from '@tabler/icons-react'
import Link from 'next/link'
import {
  getGalleryDetailMessages,
  getLocalizedUrl,
  type Language,
} from '@/i18n'

interface GalleryIndexBreadcrumbProps {
  category: 'templates' | 'languages' | 'positions'
  language: Language
}

export function GalleryIndexBreadcrumb({
  category,
  language,
}: GalleryIndexBreadcrumbProps) {
  const messages = getGalleryDetailMessages(language)

  return (
    <nav
      aria-label={messages.breadcrumb.label}
      className="fd-container border-b border-fd-border px-6 py-4"
    >
      <ol className="flex items-center gap-2 text-sm">
        <li>
          <Link
            href={getLocalizedUrl('/gallery', language)}
            className="text-fd-muted-foreground hover:text-fd-foreground"
          >
            {messages.breadcrumb.gallery}
          </Link>
        </li>
        <li className="flex items-center gap-2" aria-current="page">
          <IconChevronRight
            aria-hidden="true"
            size={14}
            className="text-fd-muted-foreground/60"
          />
          <span className="font-medium text-fd-foreground">
            {messages.breadcrumb[category]}
          </span>
        </li>
      </ol>
    </nav>
  )
}
