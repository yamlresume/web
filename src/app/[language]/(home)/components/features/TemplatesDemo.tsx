'use client'

import clsx from 'clsx'
import Image from 'next/image'
import { useEffect, useState } from 'react'

const TEMPLATE_IMAGES = [
  '/static/images/docs/layouts/latex/templates/moderncv-casual-template.png',
  '/static/images/docs/layouts/latex/templates/moderncv-banking-template.png',
  '/static/images/docs/layouts/latex/templates/moderncv-classic-template.png',
]

/**
 * Props for the TemplateSlide component.
 */
interface TemplateSlideProps {
  /** The source URL of the template image */
  src: string
  /** Alt text for the image */
  alt?: string
  /** Whether the slide is currently active (centered) */
  isActive: boolean
}

/**
 * Renders an individual template preview slide.
 */
function TemplateSlide({
  src,
  alt = 'Template Preview',
  isActive,
}: TemplateSlideProps) {
  return (
    <div
      className={clsx(
        'flex',
        'h-full',
        'shrink-0',
        'items-center',
        'justify-center',
        'py-2',
        'px-4',
        // Responsive width controlled by CSS variable logic in parent
        'w-[70%]',
        'md:w-[45%]',
        'transition-all',
        'duration-500',
        'ease-out',
        isActive
          ? 'scale-100 opacity-100 blur-0 z-10'
          : 'scale-90 opacity-40 blur-[1px] grayscale z-0'
      )}
    >
      <div className={clsx('relative', 'h-full', 'aspect-[3/4]')}>
        <Image src={src} alt={alt} fill className="object-contain" />
      </div>
    </div>
  )
}

/**
 * Props for the PaginationIndicator component.
 */
interface PaginationIndicatorProps {
  /** Total number of items in the carousel */
  total: number
  /** Currently active index */
  activeIndex: number
}

/**
 * Renders the pagination dots for the carousel.
 */
function PaginationIndicator({ total, activeIndex }: PaginationIndicatorProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'bottom-2',
        'left-0',
        'right-0',
        'flex',
        'justify-center',
        'gap-1.5'
      )}
    >
      {Array.from({ length: total }).map((_, i) => (
        <div
          // biome-ignore lint/suspicious/noArrayIndexKey: static dots
          key={i}
          className={clsx(
            'h-1',
            'transition-all',
            'duration-300',
            i === activeIndex
              ? 'w-3 bg-fd-foreground'
              : 'w-1 bg-fd-muted-foreground/30'
          )}
        />
      ))}
    </div>
  )
}

/**
 * A carousel-based demo component showcasing different resume templates.
 * Automatically cycles through template images with smooth transitions.
 */
export function TemplatesDemo() {
  const [index, setIndex] = useState(0)

  useEffect(() => {
    const timer = setInterval(() => {
      setIndex((prev) => (prev + 1) % TEMPLATE_IMAGES.length)
    }, 4000)
    return () => clearInterval(timer)
  }, [])

  return (
    <div
      className={clsx(
        'relative',
        'h-[400px]',
        'w-full',
        'overflow-hidden',
        'md:h-[500px]',
        'lg:h-full'
      )}
    >
      {/*
        Container for slides.
        Uses CSS variables to handle responsive centering logic.
        --index: current active index
        --item-width: width of each item (must match w-[] classes in Slide)
      */}
      <div
        className={clsx(
          'flex',
          'h-full',
          'transition-transform',
          'duration-700',
          'ease-in-out'
        )}
        style={{
          // @ts-expect-error: Custom CSS variables for layout logic
          '--index': index,
          transform: `translateX(calc(50% - (var(--index) * var(--item-width, 70%)) - (var(--item-width, 70%) / 2)))`,
        }}
      >
        <style jsx>{`
          div {
            --item-width: 70%;
          }
          @media (min-width: 768px) {
            div {
              --item-width: 45%;
            }
          }
        `}</style>
        {TEMPLATE_IMAGES.map((img, i) => (
          <TemplateSlide key={img} src={img} isActive={i === index} />
        ))}
      </div>

      <PaginationIndicator total={TEMPLATE_IMAGES.length} activeIndex={index} />
    </div>
  )
}
