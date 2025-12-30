import clsx from 'clsx'
import { AnimatedTerminal, type TerminalStep } from './AnimatedTerminal'

/**
 * Common line styling for terminal-like appearance.
 */
const lineClasses = 'leading-[1.625]'

/**
 * Props for the ValidationWarning component.
 */
interface ValidationWarningProps {
  /** File location string (e.g., "resume.yml:9:12") */
  location: string
  /** The warning message text */
  message: string
  /** The line of code where the warning occurred */
  codeLine: string
  /** Number of spaces to indent the caret pointer */
  caretPadding: number
}

/**
 * Renders a single validation warning block in the terminal output.
 */
function ValidationWarning({
  location,
  message,
  codeLine,
  caretPadding,
}: ValidationWarningProps) {
  return (
    <div className="flex flex-col text-neutral-400">
      <div className={clsx(lineClasses, 'text-neutral-200')}>
        {location}: <span className="text-red-400">warning:</span> {message}
      </div>
      <div className={clsx(lineClasses, 'whitespace-pre')}>{codeLine}</div>
      <div
        className={clsx('text-emerald-500', 'whitespace-pre', 'leading-none')}
      >
        {' '.repeat(caretPadding)}^
      </div>
    </div>
  )
}

/**
 * Renders the final red failure message at the end of the terminal output.
 */
function ValidationFailure() {
  return (
    <div className={clsx('flex', 'items-center', 'text-red-400', lineClasses)}>
      <span className="shrink-0">✖</span>
      <span>&nbsp;Resume validation failed.</span>
    </div>
  )
}

/**
 * Props for the SchemaTerminalDemo component.
 */
export interface SchemaTerminalDemoProps {
  /** Optional fixed height for the terminal container */
  height?: string | number
  /** Optional additional CSS classes */
  className?: string
}

/**
 * A terminal demo component showcasing the schema validation feedback system.
 * Uses AnimatedTerminal to simulate the execution of the validation command.
 */
export function SchemaTerminalDemo({
  height,
  className,
}: SchemaTerminalDemoProps) {
  const steps: TerminalStep[] = [
    {
      command: 'yamlresume validate resume.yml',
      output: (
        <div className="flex flex-col">
          <ValidationWarning
            location="resume.yml:9:12"
            message="email is invalid."
            codeLine="      email: hi@pp"
            caretPadding={13}
          />
          <ValidationWarning
            location="resume.yml:10:10"
            message="URL is invalid."
            codeLine="      url: https//ppresume.com/gallery"
            caretPadding={11}
          />
          <ValidationWarning
            location="resume.yml:19:11"
            message="city should be 2 characters or more."
            codeLine="      city: S"
            caretPadding={12}
          />
          <ValidationWarning
            location="resume.yml:31:11"
            message="courses should be 2 characters or more."
            codeLine="      - D"
            caretPadding={8}
          />
          <ValidationFailure />
        </div>
      ),
    },
  ]

  return (
    <AnimatedTerminal steps={steps} height={height} className={className} />
  )
}
