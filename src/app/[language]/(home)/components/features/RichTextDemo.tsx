import { IconEye } from '@tabler/icons-react'
import clsx from 'clsx'
import Image from 'next/image'
import { useState } from 'react'
import { VSCodeEditor } from './VSCodeEditor'

/**
 * Props for the SourceView component.
 */
interface SourceViewProps {
  /** The YAML code to display */
  code: string
  /** Whether this view is active (visible) */
  isActive: boolean
}

/**
 * Renders the highlighted YAML source code.
 */
function SourceView({ code, isActive }: SourceViewProps) {
  return (
    <div
      className={clsx(
        'whitespace-pre',
        'font-mono',
        !isActive && 'invisible py-4 pl-14 pr-4'
      )}
    >
      {code.split('\n').map((line, i) => {
        const content = (() => {
          // Highlight comments and delimiters
          if (line.trim().startsWith('#') || line.trim() === '---') {
            return <span className="text-neutral-500">{line || '\u00A0'}</span>
          }

          // Highlight YAML keys
          const keyMatch = line.match(/^( *)(content|basics|summary)(:.*)/)
          if (keyMatch) {
            const [_, indent, key, rest] = keyMatch
            return (
              <span className="text-neutral-400">
                {indent}
                <span className="text-sky-300">{key}</span>
                {rest}
              </span>
            )
          }

          // Default text (values)
          return <span className="text-neutral-200">{line || '\u00A0'}</span>
        })()

        return (
          <div
            // biome-ignore lint/suspicious/noArrayIndexKey: lines are static
            key={i}
            className="h-[1.625em] flex items-center"
          >
            {content}
          </div>
        )
      })}
    </div>
  )
}

/**
 * Props for the PreviewView component.
 */
interface PreviewViewProps {
  /** Path to the image to show in preview */
  src: string
  /** Mouse X position (percentage) for zoom origin */
  mouseX: number
  /** Mouse Y position (percentage) for zoom origin */
  mouseY: number
  /** Callback for mouse movements to update zoom origin */
  onMouseMove: (e: React.MouseEvent<HTMLDivElement>) => void
}

/**
 * Renders an interactive image preview with zoom-on-hover functionality.
 */
function PreviewView({ src, mouseX, mouseY, onMouseMove }: PreviewViewProps) {
  return (
    <div
      role="img"
      aria-label="Interactive resume preview with zoom on hover"
      className={clsx(
        'absolute',
        'inset-0',
        'overflow-hidden',
        'bg-gray-100',
        'group/zoomer',
        'cursor-zoom-in'
      )}
      onMouseMove={onMouseMove}
    >
      <div
        className={clsx(
          'absolute',
          'inset-0',
          'flex',
          'items-center',
          'justify-center',
          'pointer-events-none',
          'p-4'
        )}
      >
        <div
          className={clsx(
            'relative',
            'w-full',
            'h-full',
            'transition-transform',
            'duration-200',
            'ease-out',
            'group-hover/zoomer:scale-[2.5]'
          )}
          style={{
            transformOrigin: `${mouseX}% ${mouseY}%`,
          }}
        >
          <Image
            src={src}
            alt="Rich Text Preview"
            fill
            className="object-contain contrast-[1.05]"
          />
        </div>
      </div>
    </div>
  )
}

/**
 * A demo component showcasing rich text support in YAMLResume.
 * Includes a source code view with syntax highlighting and an interactive preview.
 */
export function RichTextDemo() {
  const [activeTab, setActiveTab] = useState<'source' | 'preview'>('source')
  const [mousePos, setMousePos] = useState({ x: 50, y: 50 })

  const code = `---
content:
  basics:
    # ...
    summary: |
      This is a sample YAML resume that support limited set of markdown rich text syntax (bold, italics, links, lists):

      - Computer Science major with **strong foundation** in data structures, *algorithms*, and software development
        1. Pixel perfect full stack web developer, specialised in creating high-quality, visually appealing websites
        2. Experiened in databases (SQL, NoSQL), familiar with server-side technologies ([Node.js](https://nodejs.org/en), Express, etc.)
      - Team player, with detail-oriented mindset and a keen eye for design and user experiences`

  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    const rect = e.currentTarget.getBoundingClientRect()
    const x = ((e.clientX - rect.left) / rect.width) * 100
    const y = ((e.clientY - rect.top) / rect.height) * 100
    setMousePos({ x, y })
  }

  return (
    <div className="bg-neutral-900 h-full">
      <VSCodeEditor
        fileName="resume.yml"
        loc={11}
        showGutter={activeTab === 'source'}
        allowHorizontalScroll={activeTab !== 'preview'}
        tabs={[
          {
            id: 'source',
            label: 'resume.yml',
            active: activeTab === 'source',
            onClick: () => setActiveTab('source'),
          },
          {
            id: 'preview',
            label: 'resume.pdf',
            icon: (
              <IconEye
                size={12}
                className={
                  activeTab === 'preview' ? 'text-sky-400' : 'text-neutral-600'
                }
              />
            ),
            active: activeTab === 'preview',
            onClick: () => setActiveTab('preview'),
          },
        ]}
      >
        <SourceView code={code} isActive={activeTab === 'source'} />

        {activeTab === 'preview' && (
          <PreviewView
            src="/static/images/blog/introducing-yamlresume/rich-text-support-in-summary-field.webp"
            mouseX={mousePos.x}
            mouseY={mousePos.y}
            onMouseMove={handleMouseMove}
          />
        )}
      </VSCodeEditor>
    </div>
  )
}
