import clsx from 'clsx'

type BadgeVariant = 'primary' | 'muted' | 'outline' | 'mono'

interface GalleryBadgeProps {
  children: React.ReactNode
  variant?: BadgeVariant
  className?: string
}

const variantClasses: Record<BadgeVariant, string> = {
  primary: 'bg-fd-primary/10 text-fd-primary',
  muted: 'bg-fd-muted text-fd-muted-foreground',
  outline: 'border text-fd-muted-foreground',
  mono: 'bg-fd-foreground text-fd-background font-mono',
}

export function GalleryBadge({
  children,
  variant = 'muted',
  className,
}: GalleryBadgeProps) {
  return (
    <span
      className={clsx([
        'inline-flex',
        'items-center',
        'rounded-sm',
        'px-2',
        'py-0.5',
        'text-[10px]',
        'font-semibold',
        'tracking-wide',
        variantClasses[variant],
        className,
      ])}
    >
      {children}
    </span>
  )
}
