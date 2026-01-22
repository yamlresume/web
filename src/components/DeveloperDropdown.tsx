'use client'

import { ChevronDown } from 'lucide-react'
import Link from 'next/link'
import { useEffect, useRef, useState } from 'react'

export function DeveloperDropdown({
  language,
  label,
}: {
  language: string
  label: string
}) {
  const [isOpen, setIsOpen] = useState(false)
  const dropdownRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (
        dropdownRef.current &&
        !dropdownRef.current.contains(event.target as Node)
      ) {
        setIsOpen(false)
      }
    }
    document.addEventListener('mousedown', handleClickOutside)
    return () => {
      document.removeEventListener('mousedown', handleClickOutside)
    }
  }, [])

  const getUrl = (path: string) => `/${language}${path}`

  const items = [
    { text: '@yamlresume/core', path: '/developer/core/index.html' },
    { text: 'CLI', path: '/developer/cli/index.html' },
    {
      text: 'create-yamlresume',
      path: '/developer/create-yamlresume/index.html',
    },
    { text: 'json2yamlresume', path: '/developer/json2yamlresume/index.html' },
  ]

  return (
    <div
      className="relative md:p-2 py-1.5 md:text-fd-muted-foreground text-fd-foreground"
      ref={dropdownRef}
    >
      <button
        type="button"
        onClick={() => setIsOpen(!isOpen)}
        className="flex items-center gap-1 transition-colors"
      >
        {label}
        <ChevronDown
          className={`h-4 w-4 transition-transform ${isOpen ? 'rotate-180' : ''}`}
        />
      </button>

      {isOpen && (
        <div className="absolute top-full mt-2 w-48 rounded-md border bg-popover p-2 shadow-md z-50 flex flex-col gap-1 left-0 bg-white dark:bg-zinc-950">
          {items.map((item) => (
            <Link
              key={item.path}
              href={getUrl(item.path)}
              className="px-2 py-1.5 text-sm hover:bg-accent hover:text-accent-foreground rounded-sm transition-colors text-left block"
              onClick={() => setIsOpen(false)}
            >
              {item.text}
            </Link>
          ))}
        </div>
      )}
    </div>
  )
}
