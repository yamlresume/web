'use client'

import clsx from 'clsx'
import { useEffect, useState } from 'react'
import { Cursor } from './Cursor'

/**
 * Props for the DragHandle component.
 */
interface DragHandleProps {
  /** Optional additional CSS classes */
  className?: string
}

/**
 * Renders a visual reordering indicator (three small dots).
 */
function DragHandle({ className }: DragHandleProps) {
  return (
    <div
      className={clsx(
        'ml-auto',
        'flex',
        'items-center',
        'gap-0.5',
        'opacity-30',
        className
      )}
    >
      <div className="h-0.5 w-0.5 bg-current" />
      <div className="h-0.5 w-0.5 bg-current" />
      <div className="h-0.5 w-0.5 bg-current" />
    </div>
  )
}

/**
 * Props for the SectionItem component.
 */
interface SectionItemProps {
  /** Unique identifier for the section */
  id: string
  /** The text label to display */
  label: string
  /** Whether the section is in an active/highlighted state */
  isActive: boolean
  /** Whether to show a typing cursor */
  showCursor: boolean
  /** Whether to show the drag handle indicator */
  showDragHandle: boolean
  /** Vertical position in pixels */
  top: number
  /** Layering order */
  zIndex: number
}

/**
 * Renders an animated resume section item that can be reordered or renamed.
 */
function SectionItem({
  label,
  isActive,
  showCursor,
  showDragHandle,
  top,
  zIndex,
}: SectionItemProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'left-0',
        'w-full',
        'transition-all',
        'duration-700',
        'ease-in-out'
      )}
      style={{
        top: `${top}px`,
        zIndex: zIndex,
      }}
    >
      <div
        className={clsx(
          'flex',
          'items-center',
          'gap-2',
          'border',
          'px-3',
          'py-1.5',
          'text-[10px]',
          'font-medium',
          'transition-all',
          'duration-500',
          isActive
            ? 'scale-[1.02] border-neutral-800 bg-neutral-900 text-neutral-100 shadow-lg'
            : 'border-neutral-200 bg-neutral-50 text-neutral-500 shadow-sm'
        )}
      >
        <div
          className={clsx(
            'h-1.5',
            'w-1.5',
            'transition-colors',
            'duration-500',
            isActive ? 'bg-neutral-400' : 'bg-neutral-300'
          )}
        />
        <span className="flex items-center truncate">
          {label}
          {showCursor && <Cursor />}
        </span>
        {showDragHandle && <DragHandle />}
      </div>
    </div>
  )
}

/**
 * A demo component showcasing the infinite flexibility of resume sections.
 * Animates reordering and renaming of sections to demonstrate customization.
 */
export function InfiniteFlexibilityDemo() {
  const [sections, setSections] = useState([
    { id: 'exp', label: 'Experience' },
    { id: 'edu', label: 'Education' },
    { id: 'prj', label: 'Projects' },
    { id: 'skl', label: 'Skills' },
    { id: 'awd', label: 'Awards' },
    { id: 'crt', label: 'Certificates' },
    { id: 'lng', label: 'Languages' },
    { id: 'int', label: 'Interests' },
    { id: 'vol', label: 'Volunteer' },
    { id: 'ref', label: 'References' },
  ])
  const [step, setStep] = useState(0)
  const [typedLabel, setTypedLabel] = useState('Projects')

  useEffect(() => {
    const timer = setInterval(() => {
      setStep((s) => (s + 1) % 4)
    }, 3000)
    return () => clearInterval(timer)
  }, [])

  useEffect(() => {
    if (step === 0) {
      setSections([
        { id: 'exp', label: 'Experience' },
        { id: 'edu', label: 'Education' },
        { id: 'prj', label: 'Projects' },
        { id: 'skl', label: 'Skills' },
        { id: 'awd', label: 'Awards' },
        { id: 'crt', label: 'Certificates' },
        { id: 'lng', label: 'Languages' },
        { id: 'int', label: 'Interests' },
        { id: 'vol', label: 'Volunteer' },
        { id: 'ref', label: 'References' },
      ])
      setTypedLabel('Projects')
    } else if (step === 1) {
      // Reorder: Move Projects to Top
      setSections([
        { id: 'prj', label: 'Projects' },
        { id: 'exp', label: 'Experience' },
        { id: 'edu', label: 'Education' },
        { id: 'skl', label: 'Skills' },
        { id: 'awd', label: 'Awards' },
        { id: 'crt', label: 'Certificates' },
        { id: 'lng', label: 'Languages' },
        { id: 'int', label: 'Interests' },
        { id: 'vol', label: 'Volunteer' },
        { id: 'ref', label: 'References' },
      ])
    } else if (step === 2) {
      // Renaming animation: Projects -> Portfolio
      const target = 'Portfolio'
      let i = 0
      const typeTimer = setInterval(() => {
        setTypedLabel(target.slice(0, i))
        i++
        if (i > target.length) clearInterval(typeTimer)
      }, 100)
      return () => clearInterval(typeTimer)
    } else if (step === 3) {
      // Maintain renamed state
      setSections([
        { id: 'prj', label: 'Portfolio' },
        { id: 'exp', label: 'Experience' },
        { id: 'edu', label: 'Education' },
        { id: 'skl', label: 'Skills' },
        { id: 'awd', label: 'Awards' },
        { id: 'crt', label: 'Certificates' },
        { id: 'lng', label: 'Languages' },
        { id: 'int', label: 'Interests' },
        { id: 'vol', label: 'Volunteer' },
        { id: 'ref', label: 'References' },
      ])
      setTypedLabel('Portfolio')
    }
  }, [step])

  return (
    <div className={'relative h-48 w-full'}>
      {sections.map((sec, index) => (
        <SectionItem
          key={sec.id}
          id={sec.id}
          label={sec.id === 'prj' ? typedLabel : sec.label}
          isActive={sec.id === 'prj' && step >= 1}
          showCursor={sec.id === 'prj' && step === 2}
          showDragHandle={sec.id === 'prj' && step === 1}
          top={index * 36}
          zIndex={sec.id === 'prj' ? 10 : 1}
        />
      ))}
    </div>
  )
}
