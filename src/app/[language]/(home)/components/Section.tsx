import clsx from 'clsx'
import type { ReactNode } from 'react'

function SectionTitle({ title }: { title: ReactNode }) {
  return (
    <div className="flex justify-center">
      <h2
        className={clsx(
          'font-semibold',
          'text-4xl',
          'px-8',
          'py-4',
          'transition-colors',
          'inline-block',
          'shadow-[4px_4px_0px_0px_rgba(0,0,0,0.9)]',
          'dark:shadow-[4px_4px_0px_0px_rgba(255,255,255,0.9)]',
          'hover:shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
          'dark:hover:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]',
          'hover:translate-x-[2px]',
          'hover:translate-y-[2px]'
        )}
      >
        {title}
      </h2>
    </div>
  )
}

interface SectionProps {
  title: ReactNode
  children: ReactNode
  className?: string
}

export function Section({ title, children, className }: SectionProps) {
  return (
    <section className={`container mx-auto ${className || ''}`}>
      <div className="flex flex-col gap-16">
        <SectionTitle title={title} />
        {children}
      </div>
    </section>
  )
}
