import clsx from 'clsx'

/**
 * Props for the SnippetHeader component.
 */
interface SnippetHeaderProps {
  /** The language name to display in the header */
  language: string
}

/**
 * The header area of the code snippet demo, displaying the language.
 */
function SnippetHeader({ language }: SnippetHeaderProps) {
  return (
    <div
      className={clsx(
        'flex',
        'items-center',
        'gap-2',
        'border-b',
        'border-fd-foreground/5',
        'bg-fd-muted/50',
        'px-4',
        'py-2'
      )}
    >
      <span
        className={clsx(
          'text-[10px]',
          'font-medium',
          'tracking-wide',
          'text-fd-muted-foreground'
        )}
      >
        {language}
      </span>
    </div>
  )
}

/**
 * Props for the SnippetLine component.
 */
interface SnippetLineProps {
  /** The line of code to display */
  line: string
  /** The index of the line (for key generation) */
  index: number
}

/**
 * A single line in the code snippet with syntax highlighting.
 */
function SnippetLine({ line, index }: SnippetLineProps) {
  let color = 'text-fd-muted-foreground'
  if (line.startsWith('commit')) color = 'text-amber-500/80'
  else if (line.startsWith('Author:')) color = 'text-fd-foreground/70'
  else if (line.startsWith('Date:')) color = 'text-fd-foreground/70'
  else if (line.startsWith('+')) color = 'text-emerald-600/80'
  else if (line.startsWith('-')) color = 'text-red-500/80'
  else if (line.startsWith('feat:')) color = 'text-fd-foreground'

  return (
    <div
      key={`${index}-${line.substring(0, 10)}`}
      className={clsx('min-h-[1.5em]', 'whitespace-pre-wrap', color)}
    >
      {line || '\u00A0'}
    </div>
  )
}

/**
 * Props for the SnippetBody component.
 */
interface SnippetBodyProps {
  /** The full code string to display */
  code: string
}

/**
 * The body area of the code snippet demo, displaying the formatted code.
 */
function SnippetBody({ code }: SnippetBodyProps) {
  return (
    <div className={'p-4 font-mono text-[11px] leading-relaxed'}>
      <pre className="overflow-hidden">
        <code>
          {code.split('\n').map((line, i) => (
            <SnippetLine
              key={`${i}-${line.substring(0, 10)}`}
              line={line}
              index={i}
            />
          ))}
        </code>
      </pre>
    </div>
  )
}

/**
 * Props for the CodeSnippetDemo component.
 */
export interface CodeSnippetDemoProps {
  /** The code string to be displayed */
  code: string
  /** The programming language name for display */
  language: string
}

/**
 * A component to demonstrate code snippets with basic syntax highlighting.
 * Designed to look like a simple code editor or terminal window.
 */
export function CodeSnippetDemo({ code, language }: CodeSnippetDemoProps) {
  return (
    <div
      className={clsx(
        'flex',
        'flex-col',
        'font-mono',
        'border',
        'border-fd-foreground/10',
        'bg-fd-muted/30',
        'h-full'
      )}
    >
      <SnippetHeader language={language} />
      <SnippetBody code={code} />
    </div>
  )
}
