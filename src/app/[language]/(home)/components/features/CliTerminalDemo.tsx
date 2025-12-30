import { AnimatedTerminal, type TerminalStep } from './AnimatedTerminal'

/**
 * Common line styling for terminal output.
 */
const lineClasses = 'flex gap-1.5 items-start leading-[1.625]'

/**
 * Props for the TerminalSuccessLine component.
 */
interface TerminalSuccessLineProps {
  /** The message text to display */
  message: string | React.ReactNode
}

/**
 * Renders a terminal line with a green checkmark indicating success.
 */
function TerminalSuccessLine({ message }: TerminalSuccessLineProps) {
  return (
    <div className={lineClasses}>
      <span className="text-emerald-500 shrink-0">✔</span>
      <span className="text-neutral-500">{message}</span>
    </div>
  )
}

/**
 * Props for the TerminalProgressLine component.
 */
interface TerminalProgressLineProps {
  /** The prefix message before the highlighted command */
  prefix: string
  /** The command or specific detail to highlight in cyan */
  highlight?: string
}

/**
 * Renders a terminal line with a fuchsia progress indicator and highlighted text.
 */
function TerminalProgressLine({
  prefix,
  highlight,
}: TerminalProgressLineProps) {
  return (
    <div className={lineClasses}>
      <span className="text-fuchsia-400 shrink-0">◑</span>
      <span className="text-neutral-400">
        {prefix}
        {highlight && <span className="text-cyan-400">&nbsp;{highlight}</span>}
      </span>
    </div>
  )
}

/**
 * Props for the CliTerminalDemo component.
 */
export interface CliTerminalDemoProps {
  /** Optional fixed height for the terminal container */
  height?: string | number
  /** Optional additional CSS classes */
  className?: string
}

/**
 * A terminal demo component showcasing basic CLI commands like `new` and `build`.
 * Uses AnimatedTerminal to simulate user interaction and command feedback.
 */
export function CliTerminalDemo({ height, className }: CliTerminalDemoProps) {
  const steps: TerminalStep[] = [
    {
      command: 'yamlresume new resume.yml',
      output: (
        <TerminalSuccessLine message="Created resume.yml successfully." />
      ),
    },
    {
      command: 'yamlresume build resume.yml',
      output: (
        <div className="flex flex-col">
          <TerminalSuccessLine message="Generated resume tex file successfully: resume.tex" />
          <TerminalProgressLine
            prefix="Generating resume pdf file with command:"
            highlight="xelatex -halt-on-error resume.tex..."
          />
          <TerminalSuccessLine message="Generated resume pdf file successfully: resume.pdf" />
          <TerminalSuccessLine message="Generated resume markdown file successfully: resume.md" />
          <TerminalSuccessLine message="Generated resume html file successfully: resume.html" />
        </div>
      ),
    },
    {
      command: 'yamlresume dev resume.yml',
      output: (
        <TerminalProgressLine prefix="Watching file changes: my-resume.yml..." />
      ),
    },
  ]

  return (
    <AnimatedTerminal steps={steps} height={height} className={className} />
  )
}
