'use client'

import { IconCheck, IconChevronDown, IconSearch } from '@tabler/icons-react'
import clsx from 'clsx'
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from 'fumadocs-ui/components/ui/popover'
import { useEffect, useId, useMemo, useRef, useState } from 'react'

interface SearchableSelectProps {
  value: string
  onChange: (value: string) => void
  options: string[]
  placeholder: string
  format?: (value: string) => string
}

export function SearchableSelect({
  value,
  onChange,
  options,
  placeholder,
  format = (item) => item,
}: SearchableSelectProps) {
  const [open, setOpen] = useState(false)
  const [query, setQuery] = useState('')
  const [highlightedIndex, setHighlightedIndex] = useState(0)
  const inputRef = useRef<HTMLInputElement>(null)
  const triggerId = useId()

  const filteredOptions = useMemo(() => {
    const normalized = query.trim().toLowerCase()
    if (!normalized) {
      return options
    }

    return options.filter((option) =>
      format(option).toLowerCase().includes(normalized)
    )
  }, [options, query, format])

  useEffect(() => {
    if (!open) {
      setQuery('')
      setHighlightedIndex(0)
    }
  }, [open])

  function handleOpenChange(nextOpen: boolean) {
    setOpen(nextOpen)
    if (nextOpen) {
      requestAnimationFrame(() => inputRef.current?.focus())
    }
  }

  function handleQueryChange(event: React.ChangeEvent<HTMLInputElement>) {
    setQuery(event.target.value)
    setHighlightedIndex(0)
  }

  function handleSelect(option: string) {
    onChange(option === value ? '' : option)
    setOpen(false)
  }

  function handleKeyDown(event: React.KeyboardEvent<HTMLInputElement>) {
    if (filteredOptions.length === 0) {
      return
    }

    if (event.key === 'ArrowDown') {
      event.preventDefault()
      setHighlightedIndex((index) => (index + 1) % filteredOptions.length)
    } else if (event.key === 'ArrowUp') {
      event.preventDefault()
      setHighlightedIndex(
        (index) => (index - 1 + filteredOptions.length) % filteredOptions.length
      )
    } else if (event.key === 'Enter') {
      event.preventDefault()
      handleSelect(filteredOptions[highlightedIndex])
    }
  }

  const selectedLabel = value ? format(value) : placeholder

  return (
    <Popover open={open} onOpenChange={handleOpenChange}>
      <PopoverTrigger
        id={triggerId}
        aria-label={placeholder}
        className={clsx([
          'inline-flex',
          'items-center',
          'justify-between',
          'gap-2',
          'min-w-[140px]',
          'rounded-lg',
          'border',
          'bg-fd-background',
          'px-3',
          'py-2',
          'text-sm',
          'outline-none',
          'focus:ring-2',
          'focus:ring-fd-primary/20',
        ])}
      >
        <span
          className={clsx('truncate', !value && 'text-fd-muted-foreground')}
        >
          {selectedLabel}
        </span>
        <IconChevronDown
          size={16}
          className={clsx(
            'shrink-0',
            'text-fd-muted-foreground',
            'transition-transform',
            open && 'rotate-180'
          )}
        />
      </PopoverTrigger>
      <PopoverContent
        className="w-[var(--radix-popover-trigger-width)] p-0"
        align="start"
        sideOffset={4}
      >
        <div className="flex flex-col">
          <div
            className={clsx([
              'flex',
              'items-center',
              'gap-2',
              'border-b',
              'px-3',
              'py-2',
            ])}
          >
            <IconSearch
              size={14}
              className="shrink-0 text-fd-muted-foreground"
            />
            <input
              ref={inputRef}
              type="text"
              value={query}
              onChange={handleQueryChange}
              onKeyDown={handleKeyDown}
              placeholder="Search..."
              className={clsx([
                'flex-1',
                'bg-transparent',
                'text-sm',
                'outline-none',
              ])}
            />
          </div>

          <div className="max-h-[240px] overflow-y-auto p-1">
            {filteredOptions.length === 0 ? (
              <div className="px-3 py-2 text-sm text-fd-muted-foreground">
                No results
              </div>
            ) : (
              filteredOptions.map((option, index) => {
                const isSelected = option === value
                const isHighlighted = index === highlightedIndex

                return (
                  <button
                    key={option}
                    type="button"
                    data-testid={`searchable-select-option-${option}`}
                    onClick={() => handleSelect(option)}
                    onMouseEnter={() => setHighlightedIndex(index)}
                    className={clsx([
                      'flex',
                      'w-full',
                      'items-center',
                      'justify-between',
                      'gap-2',
                      'rounded',
                      'px-2',
                      'py-1.5',
                      'text-left',
                      'text-sm',
                      'transition-colors',
                      'hover:bg-fd-muted',
                      isHighlighted && 'bg-fd-muted',
                      isSelected && 'font-medium',
                    ])}
                  >
                    <span className="truncate">{format(option)}</span>
                    {isSelected && (
                      <IconCheck
                        size={14}
                        className="shrink-0 text-fd-primary"
                      />
                    )}
                  </button>
                )
              })
            )}
          </div>
        </div>
      </PopoverContent>
    </Popover>
  )
}
