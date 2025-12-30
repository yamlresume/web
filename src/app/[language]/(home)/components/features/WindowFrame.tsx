import clsx from 'clsx'
import type { ReactNode } from 'react'

/**
 * macOS-style window control dots (Traffic Lights)
 */
function TrafficLights() {
  return (
    <div className="flex shrink-0 gap-2 pr-4">
      <div className="h-2.5 w-2.5 bg-red-400" style={{ borderRadius: '50%' }} />
      <div
        className="h-2.5 w-2.5 bg-amber-400"
        style={{ borderRadius: '50%' }}
      />
      <div
        className="h-2.5 w-2.5 bg-emerald-400"
        style={{ borderRadius: '50%' }}
      />
    </div>
  )
}

/**
 * Props for the TitleBar component
 */
interface TitleBarProps {
  /**
   * Title or header content to display next to the controls
   */
  children?: ReactNode
}

/**
 * Window title bar with controls and optional header content
 */
function TitleBar({ children }: TitleBarProps) {
  return (
    <div
      className={clsx(
        'flex',
        'h-9',
        'shrink-0',
        'items-center',
        'bg-neutral-900',
        'px-3'
      )}
    >
      <TrafficLights />
      {children}
    </div>
  )
}

/**
 * Props for the Body component
 */
interface BodyProps {
  /**
   * Content to display in the window body
   */
  children: ReactNode
  /**
   * Optional class name for the body container
   */
  className?: string
  /**
   * Whether to allow content to overflow the body
   * @default false
   */
  allowOverflow?: boolean
}

/**
 * Central content area of the window frame
 */
function Body({ children, className, allowOverflow }: BodyProps) {
  return (
    <div
      className={clsx(
        'relative',
        !allowOverflow && 'overflow-hidden',
        className
      )}
    >
      {children}
    </div>
  )
}

/**
 * Props for the WindowFrame component
 */
export interface WindowFrameProps {
  /**
   * Content to display in the window body
   */
  children: ReactNode
  /**
   * Content to display in the title bar
   */
  header?: ReactNode
  /**
   * Optional class name for the outer container
   */
  className?: string
  /**
   * Optional class name for the content body container
   */
  contentClassName?: string
  /**
   * Whether to allow content to overflow the body
   * @default false
   */
  allowOverflow?: boolean
}

/**
 * A composable window frame component that mimics a macOS window.
 *
 * Consists of a TitleBar (with TrafficLights) and a Body.
 */
export function WindowFrame({
  children,
  header,
  className,
  contentClassName,
  allowOverflow,
}: WindowFrameProps) {
  return (
    <div
      className={clsx(
        'flex',
        'flex-col',
        'border',
        'border-neutral-800',
        'bg-neutral-900',
        'text-neutral-300',
        'shadow-xl',
        className
      )}
    >
      <TitleBar>{header}</TitleBar>
      <Body className={contentClassName} allowOverflow={allowOverflow}>
        {children}
      </Body>
    </div>
  )
}
