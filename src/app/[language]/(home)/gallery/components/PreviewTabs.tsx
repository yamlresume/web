'use client'

import { IconCode, IconEye } from '@tabler/icons-react'
import clsx from 'clsx'
import {
  type KeyboardEvent,
  type ReactNode,
  useId,
  useRef,
  useState,
} from 'react'
import type { GalleryDetailMessages } from '@/i18n'
import type { GalleryPreview } from '@/lib/galleryRoutes'
import type { HighlightedYaml } from '@/lib/highlightYaml'
import { PreviewFrame } from './PreviewFrame'
import { SourceView } from './SourceView'

interface PreviewTabsProps {
  preview: GalleryPreview
  title: string
  yamlContent?: string
  highlightedYaml?: HighlightedYaml
  filename?: string
  messages: GalleryDetailMessages
  sidebar: ReactNode
}

type Tab = 'preview' | 'source'

export function PreviewTabs({
  preview,
  title,
  yamlContent,
  highlightedYaml,
  filename,
  messages,
  sidebar,
}: PreviewTabsProps) {
  const id = useId()
  const tabRefs = useRef<Record<Tab, HTMLButtonElement | null>>({
    preview: null,
    source: null,
  })
  const [activeTab, setActiveTab] = useState<Tab>('preview')

  const tabs: { id: Tab; label: string }[] = [
    { id: 'preview', label: messages.previewTab },
    { id: 'source', label: messages.sourceTab },
  ]

  function activateTab(tab: Tab) {
    setActiveTab(tab)
    tabRefs.current[tab]?.focus()
  }

  function handleKeyDown(event: KeyboardEvent<HTMLButtonElement>, tab: Tab) {
    const index = tabs.findIndex((candidate) => candidate.id === tab)
    let nextIndex: number | undefined

    if (event.key === 'ArrowRight') {
      nextIndex = (index + 1) % tabs.length
    } else if (event.key === 'ArrowLeft') {
      nextIndex = (index - 1 + tabs.length) % tabs.length
    } else if (event.key === 'Home') {
      nextIndex = 0
    } else if (event.key === 'End') {
      nextIndex = tabs.length - 1
    }

    if (nextIndex !== undefined) {
      event.preventDefault()
      activateTab(tabs[nextIndex].id)
    }
  }

  return (
    <section aria-label={messages.regionLabel}>
      <div className="flex gap-6 border-b-2 border-fd-border" role="tablist">
        {tabs.map((tab) => {
          const isActive = activeTab === tab.id
          const tabId = `${id}-${tab.id}-tab`
          const panelId = `${id}-${tab.id}-panel`

          return (
            <button
              key={tab.id}
              ref={(element) => {
                tabRefs.current[tab.id] = element
              }}
              id={tabId}
              type="button"
              role="tab"
              aria-controls={panelId}
              aria-selected={isActive}
              tabIndex={isActive ? 0 : -1}
              onClick={() => setActiveTab(tab.id)}
              onKeyDown={(event) => handleKeyDown(event, tab.id)}
              className={clsx([
                '-mb-0.5',
                'border-b-[2px]',
                'inline-flex',
                'items-center',
                'gap-2',
                'py-3',
                'text-sm',
                'font-medium',
                'text-fd-muted-foreground',
                'transition-colors',
                'hover:text-fd-foreground',
                'focus-visible:outline-none',
                'focus-visible:ring-2',
                'focus-visible:ring-fd-primary',
                isActive && [
                  'border-fd-primary',
                  'font-semibold',
                  'text-fd-foreground',
                ],
              ])}
            >
              {tab.id === 'preview' ? (
                <IconEye aria-hidden="true" size={17} />
              ) : (
                <IconCode aria-hidden="true" size={17} />
              )}
              {tab.label}
            </button>
          )
        })}
      </div>

      <div className="grid grid-cols-1 gap-10 pt-10 xl:grid-cols-[minmax(0,1fr)_320px]">
        <div className="overflow-hidden border border-fd-border">
          <div
            id={`${id}-preview-panel`}
            role="tabpanel"
            aria-labelledby={`${id}-preview-tab`}
            hidden={activeTab !== 'preview'}
          >
            {activeTab === 'preview' && (
              <PreviewFrame
                preview={preview}
                imageAlt={messages.previewAlt.replace('{title}', title)}
                messages={messages.actions}
              />
            )}
          </div>

          <div
            id={`${id}-source-panel`}
            role="tabpanel"
            aria-labelledby={`${id}-source-tab`}
            hidden={activeTab !== 'source'}
          >
            {activeTab === 'source' && (
              <SourceView
                content={yamlContent}
                highlightedTokens={highlightedYaml}
                filename={filename}
                copyLabel={messages.actions.copy}
                copiedLabel={messages.actions.copied}
                emptyLabel={messages.sourceTab}
                bordered={false}
              />
            )}
          </div>
        </div>

        <aside className="space-y-6 xl:sticky xl:top-24 xl:self-start">
          {sidebar}
        </aside>
      </div>
    </section>
  )
}
