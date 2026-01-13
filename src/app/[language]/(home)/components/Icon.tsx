import type {
  Icon as TablerIcon,
  IconProps as TablerIconProps,
} from '@tabler/icons-react'
import clsx from 'clsx'

/**
 * Props for the unified Icon component.
 */
interface IconProps extends Omit<TablerIconProps, 'icon'> {
  /** The Tabler icon component to render */
  icon: TablerIcon
}

/**
 * A unified Icon component that provides standardized defaults for landing page sections.
 * Supports overriding all Tabler icon properties.
 */
export function Icon({
  icon: TablerIconComponent,
  size = 24,
  stroke = 1.25,
  className,
  ...props
}: IconProps) {
  return (
    <TablerIconComponent
      size={size}
      stroke={stroke}
      className={clsx('text-fd-foreground/60', className)}
      aria-hidden="true"
      {...props}
    />
  )
}
