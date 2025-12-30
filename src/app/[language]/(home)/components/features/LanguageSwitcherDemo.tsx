import { IconLanguage } from '@tabler/icons-react'
import clsx from 'clsx'
import { Cursor } from './Cursor'
import { VSCodeEditor } from './VSCodeEditor'

/**
 * Metadata for a language option in the switcher.
 */
interface LanguageInfo {
  /** ISO language code */
  code: string
  /** Whether this language is currently selected in the demo */
  selected: boolean
}

const languages: LanguageInfo[] = [
  { code: 'en', selected: false },
  { code: 'es', selected: false },
  { code: 'fr', selected: false },
  { code: 'nl', selected: false },
  { code: 'no', selected: false },
  { code: 'zh-hans', selected: true },
  { code: 'zh-hant-hk', selected: false },
  { code: 'zh-hant-tw', selected: false },
]

/**
 * Props for the LanguageItem component.
 */
interface LanguageItemProps {
  /** The language information to display */
  lang: LanguageInfo
}

/**
 * A single item in the language autocomplete list.
 */
function LanguageItem({ lang }: LanguageItemProps) {
  return (
    <div
      className={clsx(
        'flex',
        'items-center',
        'gap-2',
        'px-2',
        'py-0.5',
        lang.selected ? 'bg-blue-900 text-white' : 'hover:bg-neutral-700'
      )}
    >
      <div
        className={clsx(
          'flex',
          'h-3.5',
          'w-3.5',
          'items-center',
          'justify-center',
          'border',
          'text-[9px]',
          lang.selected
            ? 'border-sky-400 text-sky-400'
            : 'border-neutral-600 text-neutral-600'
        )}
      >
        <IconLanguage size={10} />
      </div>
      <span>{lang.code}</span>
    </div>
  )
}

/**
 * Props for the AutocompletePopup component.
 */
interface AutocompletePopupProps {
  /** List of languages to display in the popup */
  items: LanguageInfo[]
}

/**
 * The autocomplete dropdown popup showing language options.
 */
function AutocompletePopup({ items }: AutocompletePopupProps) {
  return (
    <div
      className={clsx(
        'absolute',
        'left-0',
        'top-full',
        'z-50',
        'mt-1',
        'w-44',
        'overflow-hidden',
        'border',
        'border-neutral-700',
        'bg-neutral-800',
        'text-[11px]',
        'shadow-2xl'
      )}
    >
      <div className="flex flex-col">
        {items.map((lang) => (
          <LanguageItem key={lang.code} lang={lang} />
        ))}
      </div>
    </div>
  )
}

/**
 * A demo component showcasing the multilingual support with an autocomplete interface.
 * Mimics a YAML editor with a language selection popup.
 */
export function LanguageSwitcherDemo() {
  return (
    <VSCodeEditor
      fileName="resume.yml"
      loc={3}
      allowOverflow
      contentClassName="min-h-[260px]"
    >
      <div className={'relative z-10'}>
        <div className="text-neutral-500">---</div>
        <div className="flex">
          <span className="text-sky-300">locale</span>
          <span className="text-neutral-400">:</span>
        </div>
        <div className="relative flex items-center">
          {/* Active Line Highlight overlay inside content area */}
          <div
            className={clsx(
              'absolute',
              '-left-2',
              'top-1/2',
              '-translate-y-1/2',
              'h-[1.2rem]',
              'w-[calc(100%+8px)]',
              'bg-neutral-800'
            )}
          />
          <div className="relative z-10 flex items-center">
            <div className="ml-0.5 w-4 border-l border-neutral-700" />
            <span className="text-sky-300">language</span>
            <span className="text-neutral-400">:&nbsp;</span>
            {/* Cursor container with relative positioning for popup */}
            <span className="relative flex items-center">
              <span className="flex h-[1.2rem] items-center text-neutral-200">
                zh
              </span>
              <Cursor />
              <AutocompletePopup items={languages} />
            </span>
          </div>
        </div>
      </div>
    </VSCodeEditor>
  )
}
