'use client'

import {
  IconBrandLinkedin,
  IconBrandReddit,
  IconBrandX,
} from '@tabler/icons-react'
import clsx from 'clsx'
import Image, { type StaticImageData } from 'next/image'
import { useTranslations } from '@/i18n'

import { Card } from './Card'

import { Section } from './Section'
import { TESTIMONIALS, type Testimonial } from './testimonials'

/**
 * Props for the PlatformIcon component.
 */
interface PlatformIconProps {
  /** The URL of the testimonial source to determine the platform */
  url: string
}

/**
 * Renders a grayscale social platform icon based on the source URL.
 * Supports Reddit, LinkedIn, and X (Twitter).
 */
function PlatformIcon({ url }: PlatformIconProps) {
  const iconProps = {
    size: 24,
    className: 'text-fd-foreground/60',
    stroke: 1.5,
    'aria-hidden': true,
  }

  if (url.includes('reddit.com')) {
    return <IconBrandReddit {...iconProps} />
  }
  if (url.includes('linkedin.com')) {
    return <IconBrandLinkedin {...iconProps} />
  }
  if (url.includes('x.com') || url.includes('twitter.com')) {
    return <IconBrandX {...iconProps} />
  }
  return null
}

/**
 * Props for the TestimonialAuthor component.
 */
interface TestimonialAuthorProps {
  /** Name of the author */
  author: string
  /** Optional avatar image */
  avatar: StaticImageData
}

/**
 * Renders the author's avatar and name.
 */
function TestimonialAuthor({ author, avatar }: TestimonialAuthorProps) {
  return (
    <div className="flex items-center gap-2 min-w-0">
      {avatar && (
        <div className={clsx('relative', 'w-8', 'h-8', 'shrink-0')}>
          <Image
            src={avatar}
            alt={author}
            fill
            className="object-cover"
            sizes="32px"
          />
        </div>
      )}
      <div className="flex flex-col min-w-0">
        <span className="text-sm font-medium text-fd-foreground truncate">
          {author}
        </span>
      </div>
    </div>
  )
}

/**
 * Props for the TestimonialFooter component.
 */
interface TestimonialFooterProps {
  /** The testimonial object containing author and URL info */
  testimonial: Testimonial
}

/**
 * Renders the footer section of the testimonial card.
 *
 * Contains the author info on the left and platform icon on the right.
 */
function TestimonialFooter({ testimonial }: TestimonialFooterProps) {
  return (
    <div
      className={clsx(
        'flex',
        'items-stretch',
        'border-t',
        'border-fd-border',
        'h-16'
      )}
    >
      <div className="flex-1 flex items-center px-6 min-w-0">
        <TestimonialAuthor
          author={testimonial.author}
          avatar={testimonial.avatar}
        />
      </div>

      <div
        className={clsx(
          'w-16',
          'flex',
          'items-center',
          'justify-center',
          'border-l',
          'border-fd-border'
        )}
      >
        <div className="text-fd-muted-foreground/40 transition-colors">
          <PlatformIcon url={testimonial.url} />
        </div>
      </div>
    </div>
  )
}

/**
 * Props for the TestimonialContent component.
 */
interface TestimonialContentProps {
  /** The main content/quote of the testimonial */
  content: string
}

/**
 * Renders the main quote content of the testimonial.
 */
function TestimonialContent({ content }: TestimonialContentProps) {
  return (
    <div className="p-6">
      <p className="text-fd-foreground text-sm leading-relaxed">
        &ldquo;{content}&rdquo;
      </p>
    </div>
  )
}

/**
 * Props for the TestimonialCard component.
 */
interface TestimonialCardProps {
  /** The complete testimonial data object */
  testimonial: Testimonial
}

/**
 * A card component displaying a single testimonial.
 * Features a Masonry-style layout, hovered states, and external link behavior.
 */
function TestimonialCard({ testimonial }: TestimonialCardProps) {
  return (
    <Card
      href={testimonial.url}
      className="mb-4 break-inside-avoid shadow-none"
      ariaLabel={`View testimonial by ${testimonial.author}`}
    >
      <TestimonialContent content={testimonial.content} />
      <TestimonialFooter testimonial={testimonial} />
    </Card>
  )
}

/**
 * The main section component for displaying user testimonials.
 * Renders a responsive masonry grid of testimonial cards.
 */
export function TestimonialsSection() {
  const t = useTranslations('testimonials')

  return (
    <Section title={t('sectionTitle')} className="max-w-7xl">
      <div
        className={clsx(
          'columns-1',
          'sm:columns-2',
          'lg:columns-3',
          'xl:columns-4',
          'gap-4',
          'md:gap-6'
        )}
      >
        {TESTIMONIALS.map((testimonial: Testimonial) => (
          <TestimonialCard
            key={testimonial.content}
            testimonial={testimonial}
          />
        ))}
      </div>
    </Section>
  )
}
