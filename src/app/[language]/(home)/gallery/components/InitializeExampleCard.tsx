import { IconTerminal2 } from '@tabler/icons-react'
import clsx from 'clsx'
import { CommandBlock } from '@/app/[language]/(home)/components/common'
import type { GalleryDetailMessages } from '@/i18n'
import type { HighlightedYaml } from '@/lib/highlightYaml'

interface InitializeExampleCardProps {
  command: string
  highlightedCommand: HighlightedYaml
  messages: GalleryDetailMessages['initializeExample']
  copyLabel: string
}

export function InitializeExampleCard({
  command,
  highlightedCommand,
  messages,
  copyLabel,
}: InitializeExampleCardProps) {
  return (
    <section
      className={clsx([
        'relative flex flex-col overflow-hidden',
        'border border-fd-border bg-fd-card p-6',
        'transition-all duration-300',
        'hover:-translate-x-0.5 hover:-translate-y-0.5',
        'hover:border-fd-foreground/20',
        'shadow-[6px_6px_0px_0px_rgba(0,0,0,0.08)]',
        'dark:shadow-[6px_6px_0px_0px_rgba(255,255,255,0.08)]',
        'hover:shadow-[8px_8px_0px_0px_rgba(0,0,0,0.12)]',
        'dark:hover:shadow-[8px_8px_0px_0px_rgba(255,255,255,0.12)]',
      ])}
    >
      <h2 className="mb-2 flex items-center gap-2 font-bold">
        <IconTerminal2 aria-hidden="true" size={18} />
        {messages.title}
      </h2>
      <p className="mb-4 text-sm text-fd-muted-foreground">
        {messages.description}
      </p>
      <CommandBlock command={command} copyLabel={copyLabel} multiline>
        {highlightedCommand.flatMap((line, lineIndex) => [
          ...line.tokens.map((token) => (
            <span key={`${line.id}-${token.id}`} style={{ color: token.color }}>
              {token.content}
            </span>
          )),
          lineIndex < highlightedCommand.length - 1 ? '\n' : null,
        ])}
      </CommandBlock>
    </section>
  )
}
