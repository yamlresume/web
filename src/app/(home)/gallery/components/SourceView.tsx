'use client'

import { IconCheck, IconCopy } from '@tabler/icons-react'
import clsx from 'clsx'
import { useCallback, useState } from 'react'
import type { HighlightedYaml } from '@/lib/highlightYaml'

interface SourceViewProps {
  content?: string
  highlightedTokens?: HighlightedYaml
  filename?: string
  copyLabel?: string
  copiedLabel?: string
  emptyLabel?: string
  bordered?: boolean
}

interface SourceLine {
  key: string
  line: string
  number: number
}

function getSourceLines(content?: string): SourceLine[] {
  if (!content) {
    return []
  }

  let number = 0
  const occurrences = new Map<string, number>()

  return content.split(/\r?\n/).map((line) => {
    number += 1
    const occurrence = occurrences.get(line) ?? 0
    occurrences.set(line, occurrence + 1)

    return {
      key: `line-${line}-${occurrence}`,
      line,
      number,
    }
  })
}

export function SourceView({
  content,
  highlightedTokens,
  filename,
  copyLabel = 'Copy',
  copiedLabel = 'Copied',
  emptyLabel = 'Source',
  bordered = true,
}: SourceViewProps) {
  const [copied, setCopied] = useState(false)

  const handleCopy = useCallback(() => {
    if (!content) {
      return
    }

    void navigator.clipboard.writeText(content).then(() => {
      setCopied(true)
      setTimeout(() => setCopied(false), 2000)
    })
  }, [content])

  return (
    <div
      className={clsx([
        'bg-fd-background',
        'flex',
        'flex-col',
        bordered && ['border', 'rounded-xl'],
        'overflow-hidden',
      ])}
    >
      <div
        className={clsx([
          'flex',
          'items-center',
          'justify-between',
          'px-4',
          'py-3',
          'border-b',
        ])}
      >
        <span className="text-sm text-fd-muted-foreground font-mono">
          {filename ?? 'resume.yml'}
        </span>
        <button
          type="button"
          onClick={handleCopy}
          disabled={!content}
          className={clsx([
            'inline-flex',
            'items-center',
            'gap-1.5',
            'text-xs',
            'font-medium',
            'text-fd-muted-foreground',
            'hover:text-fd-foreground',
            'disabled:opacity-50',
            'disabled:cursor-not-allowed',
          ])}
        >
          {copied ? <IconCheck size={14} /> : <IconCopy size={14} />}
          {copied ? copiedLabel : copyLabel}
        </button>
      </div>
      <div
        className={clsx([
          'bg-slate-900',
          'text-slate-300',
          'p-4',
          'md:p-6',
          'font-mono',
          'text-sm',
          'leading-relaxed',
          'overflow-auto',
          'min-h-[600px]',
          'max-h-[80vh]',
        ])}
      >
        {highlightedTokens ? (
          <pre className="whitespace-pre">
            {highlightedTokens.map((line, index) => (
              <span key={line.id} className="flex">
                <span
                  aria-hidden="true"
                  className="mr-4 inline-block min-w-8 select-none text-right text-slate-500"
                >
                  {index + 1}
                </span>
                <span>
                  {line.tokens.map((token) => (
                    <span
                      key={token.id}
                      style={{
                        color: token.color,
                        fontStyle: token.fontStyle === 1 ? 'italic' : undefined,
                        fontWeight: token.fontStyle === 2 ? 'bold' : undefined,
                        textDecoration:
                          token.fontStyle === 4 ? 'underline' : undefined,
                      }}
                    >
                      {token.content}
                    </span>
                  ))}
                </span>
              </span>
            ))}
          </pre>
        ) : content ? (
          <pre className="whitespace-pre">
            {getSourceLines(content).map(({ key, line, number }) => (
              <span key={key} className="flex">
                <span
                  aria-hidden="true"
                  className="mr-4 inline-block min-w-8 select-none text-right text-slate-500"
                >
                  {number}
                </span>
                <span>{line}</span>
              </span>
            ))}
          </pre>
        ) : (
          <span className="text-slate-500">{emptyLabel}</span>
        )}
      </div>
    </div>
  )
}
