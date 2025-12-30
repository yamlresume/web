import { IconCode } from '@tabler/icons-react'
import clsx from 'clsx'
import type { ReactNode } from 'react'
import { WindowFrame } from './WindowFrame'

/**
 * Metadata for a single tab in the VSCode editor.
 */
export interface VSCodeTab {
  /** Unique identifier for the tab */
  id: string
  /** Human-readable label shown in the tab */
  label: string
  /** Optional custom icon override */
  icon?: ReactNode
  /** Whether this tab is currently selected */
  active?: boolean
  /** Callback when the tab is clicked */
  onClick?: () => void
}

/**
 * Properties for a single editor tab component.
 */
interface EditorTabProps {
  tab: VSCodeTab
}

/**
 * A single clickable tab in the VS Code editor header.
 */
function EditorTab({ tab }: EditorTabProps) {
  return (
    <button
      type="button"
      onClick={tab.onClick}
      className={clsx(
        'flex',
        'h-full',
        'items-center',
        'gap-2',
        'border-r',
        'border-neutral-800/50',
        'px-4',
        'text-[11px]',
        'transition-colors',
        tab.active
          ? 'bg-neutral-800/50 text-neutral-200'
          : 'text-neutral-500 hover:bg-neutral-800/30 hover:text-neutral-400'
      )}
    >
      {tab.icon || (
        <IconCode
          size={12}
          className={clsx(tab.active ? 'text-orange-400' : 'text-neutral-600')}
        />
      )}
      <span className="truncate">{tab.label}</span>
    </button>
  )
}

/**
 * Properties for the editor header component.
 */
interface EditorHeaderProps {
  /** Current file name (used if no tabs are provided) */
  fileName: string
  /** Optional list of tabs to display */
  tabs?: VSCodeTab[]
}

/**
 * Header section of the editor, displaying either multiple tabs or a single filename.
 */
function EditorHeader({ fileName, tabs }: EditorHeaderProps) {
  if (tabs) {
    return (
      <div className="flex h-full items-center min-w-0">
        {tabs.map((tab) => (
          <EditorTab key={tab.id} tab={tab} />
        ))}
      </div>
    )
  }

  return (
    <div
      className={clsx(
        'flex',
        'h-full',
        'min-w-0',
        'items-center',
        'gap-2',
        'border-r',
        'border-neutral-900',
        'bg-neutral-900',
        'px-4',
        'text-[11px]',
        'text-neutral-400'
      )}
    >
      <IconCode size={12} className="shrink-0 text-orange-400" />
      <span className="truncate">{fileName}</span>
      <div className="ml-2 h-1.5 w-1.5 shrink-0 bg-neutral-400/20" />
    </div>
  )
}

/**
 * Properties for the editor gutter (line numbers).
 */
interface EditorGutterProps {
  /** Total number of lines to display */
  loc: number
}

/**
 * Displays line numbers on the left side of the editor.
 */
function EditorGutter({ loc }: EditorGutterProps) {
  return (
    <div
      className={clsx(
        'flex',
        'w-10',
        'shrink-0',
        'flex-col',
        'items-end',
        'border-r',
        'border-neutral-800/30',
        'pr-4',
        'pt-4',
        'text-right',
        'text-neutral-500',
        'select-none'
      )}
    >
      {Array.from({ length: loc }).map((_, i) => (
        // biome-ignore lint/suspicious/noArrayIndexKey: lines are static
        <div key={i} className="flex h-[1.625em] items-center">
          {i + 1}
        </div>
      ))}
    </div>
  )
}

/**
 * Properties for the main VSCodeEditor component.
 */
export interface VSCodeEditorProps {
  /** Name of the file being edited (shown if no tabs) */
  fileName: string
  /** The code or content inside the editor */
  children: ReactNode
  /** Optional content to overlay on the editor (e.g. tooltips, hover cards) */
  overlay?: ReactNode
  /** Number of lines of code (determines gutter length) */
  loc?: number
  /** Optional list of tabs for the editor */
  tabs?: VSCodeTab[]
  /** Whether to show line numbers */
  showGutter?: boolean
  /** Whether to allow content to overflow the editor frame */
  allowOverflow?: boolean
  /** Whether to allow horizontal scrolling in the content area (default: true) */
  allowHorizontalScroll?: boolean
  /** Optional extra classes for the content container */
  contentClassName?: string
}

/**
 * A themed editor component that mimics the visual style of Visual Studio Code.
 * Built on top of the WindowFrame component.
 */
export function VSCodeEditor({
  fileName,
  children,
  overlay,
  loc = 1,
  tabs,
  showGutter = true,
  allowOverflow,
  allowHorizontalScroll = true,
  contentClassName,
}: VSCodeEditorProps) {
  return (
    <div
      className={clsx(
        'relative',
        'flex',
        'flex-col',
        'overflow-hidden',
        'font-mono',
        'text-xs',
        'leading-relaxed'
      )}
    >
      <WindowFrame
        allowOverflow={allowOverflow}
        header={<EditorHeader fileName={fileName} tabs={tabs} />}
        contentClassName={clsx(
          'relative',
          'flex',
          'min-h-[140px]',
          'text-xs',
          'leading-relaxed',
          contentClassName
        )}
      >
        {showGutter && <EditorGutter loc={loc} />}

        <div
          className={clsx(
            'relative',
            'flex-1',
            'min-w-0',
            allowHorizontalScroll && 'overflow-x-auto',
            'scrollbar-hide',
            showGutter && 'p-4'
          )}
        >
          {children}
        </div>
        {overlay}
      </WindowFrame>
    </div>
  )
}
