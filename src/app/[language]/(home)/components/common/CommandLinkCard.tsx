'use client'

import {
  IconArrowUpRight,
  IconCheck,
  IconCopy,
  type Icon as TablerIcon,
} from '@tabler/icons-react'
import clsx from 'clsx'
import { createElement, type MouseEvent, useState } from 'react'
import { Card } from './Card'
import { Icon } from './Icon'

const CARD_STYLES = clsx('p-6')

const CODE_BLOCK_CONTAINER_STYLES = clsx(
  'group',
  'relative',
  'z-10',
  'w-full',
  'flex',
  'items-center',
  'gap-2',
  'border',
  'border-fd-foreground/10',
  'bg-fd-muted/50',
  'px-4',
  'py-3',
  'transition-all',
  'duration-300',
  'hover:border-fd-foreground/20',
  'hover:shadow-lg',
  'hover:-translate-y-0.5'
)

const COPY_BUTTON_STYLES = clsx(
  'flex',
  'h-8',
  'items-center',
  'justify-center',
  'transition-all',
  'duration-200',
  'hover:bg-fd-foreground/5',
  'focus:outline-none',
  'cursor-pointer'
)

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

const HIGHLIGHT_REGEX = /("[^"]*"|'[^']*'|-[^\s]+|\$[^\s]+|[^\s]+)/g

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

function CommandHighlighter({ command }: { command: string }) {
  const matches = command.match(HIGHLIGHT_REGEX) || []

  return (
    <>
      {matches.map((part, index) => {
        let colorClass = 'text-fd-foreground'

        if (
          [
            'yamlresume',
            'npx',
            'npm',
            'brew',
            'docker',
            'curl',
            'git',
            'ls',
          ].includes(part)
        ) {
          colorClass = 'text-blue-500'
        } else if (part.startsWith('-')) {
          colorClass = 'text-emerald-500'
        } else if (part.startsWith('"') || part.startsWith("'")) {
          colorClass = 'text-emerald-500'
        }

        return (
          // biome-ignore lint/suspicious/noArrayIndexKey: command tokens are static and order-stable
          <span key={`${index}-${part}`} className={colorClass}>
            {part}
            {index < matches.length - 1 ? ' ' : ''}
          </span>
        )
      })}
    </>
  )
}

function CommandBlock({
  command,
  copyLabel,
}: {
  command: string
  copyLabel: string
}) {
  const [copied, setCopied] = useState(false)

  const handleCopy = async (event: MouseEvent<HTMLButtonElement>) => {
    event.preventDefault()
    event.stopPropagation()
    await navigator.clipboard.writeText(command)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
  }

  return (
    <div className="flex justify-center mb-0">
      <div className={CODE_BLOCK_CONTAINER_STYLES}>
        <div className="flex-1 font-mono text-sm">
          <span className="select-none text-red-500">$&nbsp;</span>
          <CommandHighlighter command={command} />
        </div>
        <button
          type="button"
          onClick={handleCopy}
          className={COPY_BUTTON_STYLES}
          aria-label={copyLabel}
        >
          {copied ? (
            <Icon icon={IconCheck} size={16} className="text-green-500" />
          ) : (
            <Icon
              icon={IconCopy}
              size={16}
              className="text-fd-muted-foreground"
            />
          )}
        </button>
      </div>
    </div>
  )
}

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
