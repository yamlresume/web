'use client'

import { IconCheck, IconCopy } from '@tabler/icons-react'
import clsx from 'clsx'
import { type MouseEvent, type ReactNode, useState } from 'react'
import { Icon } from './Icon'

const HIGHLIGHT_REGEX = /("[^"]*"|'[^']*'|-[^\s]+|\$[^\s]+|[^\s]+)/g

interface CommandBlockProps {
  command: string
  copyLabel?: string
  children?: ReactNode
  multiline?: boolean
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
        } else if (
          part.startsWith('-') ||
          part.startsWith('"') ||
          part.startsWith("'")
        ) {
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

export function CommandBlock({
  command,
  copyLabel = 'Copy command',
  children,
  multiline = false,
}: CommandBlockProps) {
  const [copied, setCopied] = useState(false)

  const handleCopy = async (event: MouseEvent<HTMLButtonElement>) => {
    event.preventDefault()
    event.stopPropagation()
    await navigator.clipboard.writeText(command)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
  }

  return (
    <div className="flex justify-center">
      <div
        className={clsx([
          'group relative z-10 flex w-full gap-2',
          'border border-fd-foreground/10 bg-fd-muted/50 px-4 py-3',
          'transition-all duration-300',
          'hover:-translate-y-0.5 hover:border-fd-foreground/20',
          'hover:shadow-lg',
          multiline ? 'items-start' : 'items-center',
        ])}
      >
        <code
          className={clsx([
            'min-w-0 flex-1 font-mono text-sm',
            multiline && 'whitespace-pre',
          ])}
        >
          <span className="select-none text-red-500">$&nbsp;</span>
          {children ?? <CommandHighlighter command={command} />}
        </code>
        <button
          type="button"
          onClick={handleCopy}
          className="flex h-8 shrink-0 cursor-pointer items-center justify-center transition-all duration-200 hover:bg-fd-foreground/5 focus:outline-none"
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
