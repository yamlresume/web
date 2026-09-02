'use client'

import { IconArrowUpRight, type Icon as TablerIcon } from '@tabler/icons-react'
import clsx from 'clsx'
import { createElement } from 'react'
import { Card } from './Card'
import { CommandBlock } from './CommandBlock'
import { Icon } from './Icon'

const CARD_STYLES = clsx('p-6')

export interface CommandLinkCardProps {
  title: string
  description: string
  icon: TablerIcon
  command: string
  href: string
  ariaLabel?: string
  copyLabel?: string
  className?: string
}

const ICON_CONTAINER_STYLES = clsx(
  'flex',
  'h-12',
  'w-12',
  'shrink-0',
  'items-center',
  'justify-center',
  'bg-fd-background',
  'text-fd-foreground',
  'shadow-sm'
)

export function CommandLinkCard({
  title,
  description,
  icon,
  command,
  href,
  ariaLabel = title,
  copyLabel = 'Copy command',
  className,
}: CommandLinkCardProps) {
  return (
    <Card
      href={href}
      className={clsx(CARD_STYLES, className)}
      external={false}
      ariaLabel={ariaLabel}
    >
      <div className="flex flex-col gap-4">
        <div className="flex items-start justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className={ICON_CONTAINER_STYLES}>
              <Icon icon={icon} size={24} />
            </div>
            <div>
              <h3 className="text-lg font-semibold text-fd-foreground">
                <span
                  className={clsx(
                    'inline-flex',
                    'items-center',
                    'gap-1.5',
                    'transition-colors',
                    'hover:text-fd-accent-foreground'
                  )}
                >
                  {createElement('span', null, title)}
                  <Icon
                    icon={IconArrowUpRight}
                    size={18}
                    className={clsx(
                      'text-fd-foreground',
                      'transition-all',
                      'duration-300',
                      'group-hover:-translate-y-0.5',
                      'group-hover:translate-x-0.5',
                      'opacity-70',
                      'group-hover:opacity-100'
                    )}
                  />
                </span>
              </h3>
              {createElement(
                'p',
                { className: 'text-sm text-fd-muted-foreground' },
                description
              )}
            </div>
          </div>
        </div>
        <CommandBlock command={command} copyLabel={copyLabel} />
      </div>
    </Card>
  )
}
