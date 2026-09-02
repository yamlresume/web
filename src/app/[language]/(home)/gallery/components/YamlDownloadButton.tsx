'use client'

import { IconFileDescription } from '@tabler/icons-react'
import clsx from 'clsx'
import { useCallback } from 'react'

interface YamlDownloadButtonProps {
  label?: string
  yamlContent?: string
  filename?: string
}

export function YamlDownloadButton({
  label = 'Download YAML',
  yamlContent,
  filename = 'resume.yml',
}: YamlDownloadButtonProps) {
  const handleClick = useCallback(() => {
    if (!yamlContent) {
      return
    }

    const blob = new Blob([yamlContent], { type: 'text/yaml' })
    const url = URL.createObjectURL(blob)
    const link = document.createElement('a')
    link.href = url
    link.download = filename
    document.body.appendChild(link)
    link.click()
    document.body.removeChild(link)
    URL.revokeObjectURL(url)
  }, [yamlContent, filename])

  return (
    <button
      type="button"
      onClick={handleClick}
      disabled={!yamlContent}
      className={clsx([
        'inline-flex',
        'items-center',
        'gap-2',
        'rounded-lg',
        'border',
        'bg-fd-background',
        'px-5',
        'py-3',
        'text-sm',
        'font-semibold',
        'transition-all',
        'shadow-[4px_4px_0px_0px_rgba(15,23,42,0.9)]',
        'hover:shadow-[2px_2px_0px_0px_rgba(15,23,42,0.9)]',
        'hover:translate-x-0.5',
        'hover:translate-y-0.5',
        'hover:bg-fd-muted',
        'disabled:opacity-50',
        'disabled:cursor-not-allowed',
      ])}
    >
      <IconFileDescription aria-hidden="true" size={16} />
      {label}
    </button>
  )
}
