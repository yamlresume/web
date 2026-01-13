import clsx from 'clsx'
import Link from 'next/link'
import type React from 'react'

interface CardProps {
  /** Optional link URL. If provided, the card will be rendered as an anchor or Link. */
  href?: string
  /** Additional CSS classes. */
  className?: string
  /** Card content. */
  children: React.ReactNode
  /** Whether the link is external. Defaults to true if href starts with http. */
  external?: boolean
  /** Accessible label for the link. Required for screen readers when href is provided. */
  ariaLabel?: string
}

/**
 * A unified Card component with standardized border, background, and hover effects.
 */
export function Card({
  href,
  className,
  children,
  external,
  ariaLabel,
}: CardProps) {
  const baseStyles = clsx(
    'group',
    'relative',
    'flex',
    'flex-col',
    'overflow-hidden',
    'border',
    'border-fd-border',
    'bg-fd-card',
    'transition-all',
    'duration-300',
    'hover:border-fd-foreground/20',
    'hover:shadow-sm',
    className
  )

  return (
    <div className={baseStyles}>
      {href && (
        <CardLink href={href} external={external} ariaLabel={ariaLabel} />
      )}
      {children}
    </div>
  )
}

function CardLink({
  href,
  external,
  ariaLabel,
}: {
  href: string
  external?: boolean
  ariaLabel?: string
}) {
  const isExternal =
    external ?? (href.startsWith('http') || href.startsWith('//'))

  const linkStyles = 'absolute inset-0 z-0'
  const label = ariaLabel || 'View details'
  const screenReaderText = isExternal ? `${label} (opens in a new tab)` : label

  if (isExternal) {
    return (
      <a
        href={href}
        target="_blank"
        rel="noopener noreferrer"
        className={linkStyles}
        aria-label={screenReaderText}
      >
        <span className="sr-only">{screenReaderText}</span>
      </a>
    )
  }

  return (
    <Link href={href} className={linkStyles} aria-label={screenReaderText}>
      <span className="sr-only">{screenReaderText}</span>
    </Link>
  )
}
