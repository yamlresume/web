import { IconArrowUpRight } from '@tabler/icons-react'
import clsx from 'clsx'
import type React from 'react'
import { Card } from '../Card'

/**
 * Props for the FeatureIcon component.
 */
interface FeatureIconProps {
  /** The icon to display */
  icon: React.ReactNode
}

/**
 * Renders the icon container for a feature card.
 */
function FeatureIcon({ icon }: FeatureIconProps) {
  return (
    <div
      className={clsx(
        'flex',
        'h-8',
        'w-8',
        'shrink-0',
        'items-center',
        'justify-center',
        'bg-fd-background',
        'text-fd-foreground',
        'shadow-sm'
      )}
    >
      {icon}
    </div>
  )
}

/**
 * Props for the FeatureTitle component.
 */
interface FeatureTitleProps {
  /** The title text */
  title: string
  /** Optional link URL */
  href?: string
}

/**
 * Renders the title of a feature, optionally as a link with an arrow icon.
 */
function FeatureTitle({ title, href }: FeatureTitleProps) {
  return (
    <h3
      className={clsx(
        'text-xl',
        'font-semibold',
        'tracking-tight',
        'text-fd-foreground'
      )}
    >
      {href ? (
        <span
          className={clsx(
            'inline-flex',
            'items-center',
            'gap-1.5',
            'transition-colors',
            'hover:text-fd-accent-foreground'
          )}
        >
          {title}
          <IconArrowUpRight
            size={18}
            className={clsx(
              'text-fd-muted-foreground',
              'transition-all',
              'duration-300',
              'group-hover:-translate-y-0.5',
              'group-hover:translate-x-0.5',
              'opacity-50',
              'group-hover:opacity-100'
            )}
            aria-hidden="true"
          />
        </span>
      ) : (
        title
      )}
    </h3>
  )
}

/**
 * Props for the FeatureHeader component.
 */
interface FeatureHeaderProps {
  /** The feature title */
  title: string
  /** The feature description text */
  description: string
  /** The icon component or element */
  icon: React.ReactNode
  /** Optional link URL */
  href?: string
}

/**
 * Renders the header section of a feature card, including icon, title, and description.
 */
function FeatureHeader({ title, description, icon, href }: FeatureHeaderProps) {
  return (
    <div className={'flex flex-col gap-4 px-6 pt-6 pb-4'}>
      <div className="flex items-center gap-3">
        <FeatureIcon icon={icon} />
        <FeatureTitle title={title} href={href} />
      </div>
      <p
        className={clsx(
          'text-sm',
          'leading-relaxed',
          'text-fd-muted-foreground'
        )}
      >
        {description}
      </p>
    </div>
  )
}

/**
 * Props for the FeatureDemo component.
 */
interface FeatureDemoProps {
  /** The demo content to display */
  demo: React.ReactNode
}

/**
 * Renders the interactive or visual demo section of a feature card.
 */
function FeatureDemo({ demo }: FeatureDemoProps) {
  return (
    <div
      className={clsx(
        'relative',
        'w-full',
        'flex-1',
        'overflow-hidden',
        'px-6',
        'pb-6'
      )}
    >
      <div
        className={clsx(
          'relative',
          'h-full',
          'w-full',
          'overflow-hidden',
          'border',
          'border-fd-border/50',
          'bg-fd-background/50',
          'transition-transform',
          'duration-500',
          'group-hover:scale-[1.02]'
        )}
      >
        {demo}
      </div>
    </div>
  )
}

/**
 * Props for the FeatureCard component.
 */
export interface FeatureCardProps {
  /** Unique identifier for the feature */
  id: string
  /** The title of the feature */
  title: string
  /** A brief description of the feature */
  description: string
  /** Icon representation of the feature */
  icon: React.ReactNode
  /** Optional additional CSS classes */
  className?: string
  /** Visual demonstration content */
  demo: React.ReactNode
  /** Optional documentation or external link */
  href?: string
}

/**
 * A card component that displays a feature with an icon, title, description, and visual demo.
 * Designed to be used in a grid layout (e.g., bento grid).
 */
export function FeatureCard({
  title,
  description,
  icon,
  className,
  demo,
  href,
}: FeatureCardProps) {
  return (
    <Card href={href} className={className} external={false} ariaLabel={title}>
      <FeatureHeader
        title={title}
        description={description}
        icon={icon}
        href={href}
      />
      {demo && <FeatureDemo demo={demo} />}
    </Card>
  )
}
