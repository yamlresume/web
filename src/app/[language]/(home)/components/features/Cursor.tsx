import clsx from 'clsx'

interface CursorProps {
  className?: string
}

export function Cursor({ className }: CursorProps) {
  return (
    <span
      className={clsx(
        'inline-block',
        'h-[1.2rem]',
        'w-[2px]',
        'animate-pulse',
        'bg-neutral-200',
        'align-middle',
        className
      )}
    />
  )
}
