import clsx from 'clsx'
import Image from 'next/image'
import styles from './AnimatedImage.module.css'

/**
 * Props for the GradientOverlay component.
 */
interface GradientOverlayProps {
  /** Optional additional CSS classes */
  className?: string
}

/**
 * Renders a gradient overlay to suggest depth and blending.
 */
function GradientOverlay({ className }: GradientOverlayProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'inset-0',
        'pointer-events-none',
        'bg-gradient-to-b',
        'from-transparent',
        'via-transparent',
        'to-fd-muted/10',
        className
      )}
    />
  )
}

/**
 * Props for the ScrollingImage component.
 */
interface ScrollingImageProps {
  /** Source URL of the image */
  src: string
  /** Alt text for the image */
  alt: string
  /** Width of the inner image */
  width: number
  /** Height of the inner image */
  imgHeight: number
  /** Priority loading */
  priority: boolean
  /** Sizes prop for optimization */
  sizes: string
}

/**
 * Renders the image with scrolling animation inside a container.
 */
function ScrollingImage({
  src,
  alt,
  width,
  imgHeight,
  priority,
  sizes,
}: ScrollingImageProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'inset-x-0',
        'top-0',
        'flex',
        'flex-col',
        'items-center'
      )}
    >
      <Image
        src={src}
        alt={alt}
        width={width}
        height={imgHeight}
        priority={priority}
        sizes={sizes}
        className={clsx(
          styles.animateResume,
          'w-full',
          'shadow-2xl',
          'shadow-black/5'
        )}
      />
    </div>
  )
}

/**
 * Props for the AnimatedImage component.
 */
interface AnimatedImageProps {
  /** Source URL of the image */
  src: string
  /** Alt text for the image */
  alt: string
  /** Class name for the outer container */
  className?: string
  /** Tailwind class for the container height. Default: 'h-64' */
  height?: string
  /** Width of the inner image. Default: 800 */
  width?: number
  /** Height of the inner image. Default: 1200 */
  imgHeight?: number
  /** Priority loading for the image. Default: false */
  priority?: boolean
  /** Sizes prop for next/image optimization */
  sizes?: string
}

/**
 * A component that displays a vertical scrolling image with a gradient overlay.
 * Commonly used for showing resume previews.
 */
export function AnimatedImage({
  src,
  alt,
  className,
  height = 'h-64',
  width = 800,
  imgHeight = 1200,
  priority = false,
  sizes = '(max-width: 768px) 100vw, 50vw',
}: AnimatedImageProps) {
  return (
    <div
      className={clsx(
        'relative',
        'w-full',
        'overflow-hidden',
        'bg-fd-muted/30',
        height,
        className
      )}
    >
      <ScrollingImage
        src={src}
        alt={alt}
        width={width}
        imgHeight={imgHeight}
        priority={priority}
        sizes={sizes}
      />
      <GradientOverlay />
    </div>
  )
}
