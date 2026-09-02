import { IconChevronRight } from '@tabler/icons-react'
import Link from 'next/link'
import {
  getGalleryDetailMessages,
  getLocalizedUrl,
  type Language,
} from '@/i18n'
import type { GalleryItem } from '@/lib/gallery'
import type { GalleryDetailTarget } from '@/lib/galleryRoutes'
import type { TemplateShowcase } from '@/lib/templates'

function getEngineLabel(engine: string): string {
  switch (engine) {
    case 'html':
      return 'HTML'
    case 'docx':
      return 'Docx'
    case 'latex':
      return 'LaTeX'
    default:
      return engine
  }
}

interface GalleryBreadcrumbProps {
  item: GalleryItem
  language: Language
  target?: GalleryDetailTarget
  currentTemplate?: TemplateShowcase
}

export function GalleryBreadcrumb({
  item,
  language,
  target,
  currentTemplate,
}: GalleryBreadcrumbProps) {
  const messages = getGalleryDetailMessages(language)
  let segments: { label: string; href?: string }[]

  if (!target) {
    segments = [{ label: item.title }]
  } else if (target.type === 'template') {
    segments = [
      {
        label: messages.breadcrumb.templates,
        href: getLocalizedUrl('/gallery/templates', language),
      },
      { label: getEngineLabel(target.engine) },
      { label: currentTemplate?.name ?? target.templateId },
    ]
  } else if (target.type === 'language') {
    segments = [
      {
        label: messages.breadcrumb.languages,
        href: getLocalizedUrl('/gallery/languages', language),
      },
      { label: item.languageLabel },
    ]
  } else {
    segments = [
      {
        label: messages.breadcrumb.examples,
        href: getLocalizedUrl('/gallery/examples', language),
      },
      { label: item.title },
    ]
  }

  return (
    <nav
      aria-label={messages.breadcrumb.label}
      className="fd-container border-b border-fd-border px-6 py-4"
    >
      <ol className="flex flex-wrap items-center gap-2 text-sm">
        <li>
          <Link
            href={getLocalizedUrl('/gallery', language)}
            className="text-fd-muted-foreground hover:text-fd-foreground"
          >
            {messages.breadcrumb.gallery}
          </Link>
        </li>
        {segments.map((segment, index) => {
          const isCurrent = index === segments.length - 1

          return (
            <li
              key={`${segment.label}-${isCurrent ? 'current' : 'ancestor'}`}
              className="flex items-center gap-2"
            >
              <IconChevronRight
                aria-hidden="true"
                size={14}
                className="text-fd-muted-foreground/60"
              />
              {segment.href ? (
                <Link
                  href={segment.href}
                  className="text-fd-muted-foreground hover:text-fd-foreground"
                >
                  {segment.label}
                </Link>
              ) : (
                <span
                  aria-current={isCurrent ? 'page' : undefined}
                  className={
                    isCurrent
                      ? 'font-medium text-fd-foreground'
                      : 'text-fd-muted-foreground'
                  }
                >
                  {segment.label}
                </span>
              )}
            </li>
          )
        })}
      </ol>
    </nav>
  )
}
