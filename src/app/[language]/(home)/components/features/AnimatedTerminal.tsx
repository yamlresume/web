'use client'

import clsx from 'clsx'
import { useEffect, useState } from 'react'
import { Cursor } from './Cursor'
import { WindowFrame } from './WindowFrame'

/**
 * Represents a single step in the terminal animation.
 */
export interface TerminalStep {
  /** The command string to be typed out */
  command: string
  /** The output content to be displayed after the command is typed */
  output: React.ReactNode
  /** Delay in milliseconds after typing is finished before showing output */
  delayAfterTyping?: number
  /** Delay in milliseconds after output is displayed before moving to next step */
  delayAfterOutput?: number
}

/**
 * Props for the TerminalCommandLine component.
 */
interface TerminalCommandLineProps {
  /** The command string to display */
  command: string
  /** Whether to show the blinking cursor */
  showCursor?: boolean
}

/**
 * Renders a terminal prompt ($) followed by a command.
 */
function TerminalCommandLine({
  command,
  showCursor,
}: TerminalCommandLineProps) {
  return (
    <div className="flex h-[1.2em] items-center">
      <span className="text-red-400">$&nbsp;</span>
      <span className="flex items-center text-neutral-200">
        {command}
        {showCursor && <Cursor />}
      </span>
    </div>
  )
}

/**
 * Props for the TerminalStepBlock component.
 */
interface TerminalStepBlockProps {
  /** The command for this step */
  command: string
  /** The output content for this step */
  output: React.ReactNode
  /** Whether to show the output content */
  showOutput?: boolean
  /** Whether to show the cursor on the command line */
  showCursor?: boolean
}

/**
 * Renders a complete terminal step: a command line followed by its output.
 */
function TerminalStepBlock({
  command,
  output,
  showOutput = true,
  showCursor = false,
}: TerminalStepBlockProps) {
  return (
    <div className="space-y-1">
      <TerminalCommandLine command={command} showCursor={showCursor} />
      {showOutput && output && (
        <div className="animate-in fade-in duration-500">{output}</div>
      )}
    </div>
  )
}

/**
 * Props for the GhostLayer component.
 */
interface GhostLayerProps {
  /** All terminal steps to render for layout stabilization */
  steps: TerminalStep[]
}

/**
 * An invisible layer that renders all steps to ensure the terminal container
 * maintains a consistent height, preventing layout shifts during animation.
 */
function GhostLayer({ steps }: GhostLayerProps) {
  return (
    <div
      className={clsx('p-4', 'select-none', 'space-y-2', 'invisible')}
      aria-hidden="true"
    >
      {steps.map((step, i) => (
        // biome-ignore lint/suspicious/noArrayIndexKey: ghost steps are static
        <div key={i}>
          <TerminalStepBlock command={step.command} output={step.output} />
        </div>
      ))}
    </div>
  )
}

/**
 * Props for the AnimatedLayer component.
 */
interface AnimatedLayerProps {
  /** All terminal steps */
  steps: TerminalStep[]
  /** Current active step index */
  stepIndex: number
  /** Current animation phase */
  phase: 'typing' | 'output'
  /** Current partially typed command */
  typedCommand: string
}

/**
 * The visible layer that renders past steps and the currently animating step.
 */
function AnimatedLayer({
  steps,
  stepIndex,
  phase,
  typedCommand,
}: AnimatedLayerProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'inset-0',
        'p-4',
        'space-y-2',
        'overflow-auto'
      )}
    >
      {/* Render previous steps */}
      {steps.slice(0, stepIndex).map((step, i) => (
        /* biome-ignore lint/suspicious/noArrayIndexKey: past steps are static */
        <div key={i}>
          <TerminalStepBlock command={step.command} output={step.output} />
        </div>
      ))}

      {/* Render current step */}
      <TerminalStepBlock
        command={typedCommand}
        output={steps[stepIndex].output}
        showOutput={phase === 'output'}
        showCursor={phase === 'typing'}
      />
    </div>
  )
}

/**
 * Props for the AnimatedTerminal component.
 */
export interface AnimatedTerminalProps {
  /** Array of animation steps */
  steps: TerminalStep[]
  /** Optional container class name */
  className?: string
  /** Optional content container class name */
  contentClassName?: string
  /** Delay before looping back to the first step */
  loopDelay?: number
  /** Typing speed in milliseconds per character */
  typingSpeed?: number
  /** Optional container height */
  height?: string | number
}

/**
 * A sophisticated terminal component that types out commands and displays outputs sequentially.
 */
export function AnimatedTerminal({
  steps,
  className,
  contentClassName,
  loopDelay = 10000,
  typingSpeed = 100,
  height,
}: AnimatedTerminalProps) {
  const [stepIndex, setStepIndex] = useState(0)
  const [phase, setPhase] = useState<'typing' | 'output'>('typing')
  const [typedCommand, setTypedCommand] = useState('')

  const currentStep = steps[stepIndex]

  useEffect(() => {
    let timeout: ReturnType<typeof setTimeout>

    if (phase === 'typing') {
      if (typedCommand.length < currentStep.command.length) {
        timeout = setTimeout(() => {
          setTypedCommand(currentStep.command.slice(0, typedCommand.length + 1))
        }, typingSpeed)
      } else {
        timeout = setTimeout(() => {
          setPhase('output')
        }, currentStep.delayAfterTyping ?? 1000)
      }
    } else {
      // output phase
      const isLastStep = stepIndex === steps.length - 1
      const delay = isLastStep
        ? loopDelay
        : (currentStep.delayAfterOutput ?? 3000)

      timeout = setTimeout(() => {
        setTypedCommand('')
        if (isLastStep) {
          setStepIndex(0)
          setPhase('typing')
        } else {
          setStepIndex(stepIndex + 1)
          setPhase('typing')
        }
      }, delay)
    }

    return () => clearTimeout(timeout)
  }, [
    phase,
    typedCommand,
    currentStep,
    stepIndex,
    steps.length,
    loopDelay,
    typingSpeed,
  ])

  return (
    <WindowFrame
      className={className}
      contentClassName={clsx(
        'font-mono',
        'text-xs',
        'leading-tight',
        contentClassName
      )}
    >
      <div className="relative" style={{ height }}>
        <GhostLayer steps={steps} />
        <AnimatedLayer
          steps={steps}
          stepIndex={stepIndex}
          phase={phase}
          typedCommand={typedCommand}
        />
      </div>
    </WindowFrame>
  )
}
