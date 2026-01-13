'use client'

import {
  IconArrowUpRight,
  IconBrandDocker,
  IconBrandNpm,
  IconCheck,
  IconCopy,
  IconRocket,
  IconSwitchHorizontal,
  IconTerminal2,
} from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import { useState } from 'react'
import { getLocalizedUrl, type Language, useTranslations } from '@/i18n'
import { Card } from './Card'
import { Section } from './Section'

// --- Constants & Styles ---

const CARD_STYLES = clsx('p-6')

const CODE_BLOCK_CONTAINER_STYLES = clsx(
  'group',
  'relative',
  'z-10',
  'w-full',
  'flex',
  'items-center',
  'gap-2',
  'border',
  'border-fd-foreground/10',
  'bg-fd-muted/50',
  'px-4',
  'py-3',
  'transition-all',
  'duration-300',
  'hover:border-fd-foreground/20',
  'hover:shadow-lg',
  'hover:-translate-y-0.5'
)

const COPY_BUTTON_STYLES = clsx(
  'flex',
  'h-8',
  'items-center',
  'justify-center',
  'transition-all',
  'duration-200',
  'hover:bg-fd-foreground/5',
  'focus:outline-none',
  'cursor-pointer'
)

const ICON_CONTAINER_STYLES = clsx(
  'flex',
  'h-12',
  'w-12',
  'shrink-0',
  'items-center',
  'justify-center',
  'bg-fd-background',
  'text-fd-foreground',
  'shadow-sm'
)

const HIGHLIGHT_REGEX = /("[^"]*"|'[^']*'|-[^\s]+|\$[^\s]+|[^\s]+)/g

// --- Types ---

interface InstallMethod {
  id: string
  icon: React.ReactNode
  command: string
  href: string
}

interface OnboardingCardProps {
  method: InstallMethod
  t: (key: string) => string
  lang: Language
  className?: string
}

interface OnboardingCodeBlockProps {
  command: string
  href?: string
  lang: Language
  className?: string
}

// --- Sub-components ---

function OnboardingIcon({ icon }: { icon: React.ReactNode }) {
  return <div className={ICON_CONTAINER_STYLES}>{icon}</div>
}

function OnboardingTitle({ title }: { title: string }) {
  return (
    <h3 className={clsx('text-lg', 'font-semibold', 'text-fd-foreground')}>
      <span
        className={clsx(
          'inline-flex',
          'items-center',
          'gap-1.5',
          'transition-colors',
          'hover:text-fd-accent-foreground'
        )}
      >
        {title}
        <IconArrowUpRight
          size={18}
          className={clsx(
            'text-fd-foreground',
            'transition-all',
            'duration-300',
            'group-hover:-translate-y-0.5',
            'group-hover:translate-x-0.5',
            'opacity-70',
            'group-hover:opacity-100'
          )}
          aria-hidden="true"
        />
      </span>
    </h3>
  )
}

function ShellCommandHighlighter({ command }: { command: string }) {
  const matches = command.match(HIGHLIGHT_REGEX) || []

  return (
    <>
      {matches.map((part, index) => {
        let colorClass = 'text-fd-foreground'

        if (
          ['npx', 'npm', 'brew', 'docker', 'curl', 'git', 'ls'].includes(part)
        ) {
          colorClass = 'text-blue-500'
        } else if (part.startsWith('-')) {
          colorClass = 'text-emerald-500'
        } else if (part.startsWith('"') || part.startsWith("'")) {
          colorClass = 'text-emerald-500'
        } else if (
          ['install', 'run', 'create-yamlresume', 'new', 'build'].includes(part)
        ) {
          colorClass = 'text-fd-foreground'
        }

        return (
          <span key={`${index}-${part}`} className={colorClass}>
            {part}
            {index < matches.length - 1 ? ' ' : ''}
          </span>
        )
      })}
    </>
  )
}

function OnboardingCodeBlock({
  command,
  href,
  lang,
  className,
}: OnboardingCodeBlockProps) {
  const [copied, setCopied] = useState(false)

  const handleCopy = async (e: React.MouseEvent) => {
    e.preventDefault()
    e.stopPropagation()
    await navigator.clipboard.writeText(command)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
  }

  const content = (
    <>
      <div className={clsx('flex-1', 'font-mono', 'text-sm')}>
        <span className="select-none text-red-500">$&nbsp;</span>
        <ShellCommandHighlighter command={command} />
      </div>

      <button
        type="button"
        onClick={handleCopy}
        className={COPY_BUTTON_STYLES}
        aria-label="Copy command"
      >
        {copied ? (
          <IconCheck size={16} className="text-green-500" />
        ) : (
          <IconCopy size={16} className="text-fd-muted-foreground" />
        )}
      </button>
    </>
  )

  return (
    <div className={clsx('flex justify-center', className)}>
      {href ? (
        <Link
          href={getLocalizedUrl(href, lang)}
          className={clsx(CODE_BLOCK_CONTAINER_STYLES, 'cursor-pointer')}
        >
          {content}
        </Link>
      ) : (
        <div className={CODE_BLOCK_CONTAINER_STYLES}>{content}</div>
      )}
    </div>
  )
}

function OnboardingCard({ method, t, lang, className }: OnboardingCardProps) {
  return (
    <Card
      href={getLocalizedUrl(method.href, lang)}
      className={clsx(CARD_STYLES, className)}
      external={false}
      ariaLabel={t(`${method.id}.title`)}
    >
      <div className="flex flex-col gap-4">
        <div className="flex items-start justify-between gap-4">
          <div className="flex items-center gap-3">
            <OnboardingIcon icon={method.icon} />
            <div>
              <OnboardingTitle title={t(`${method.id}.title`)} />
              <p className="text-sm text-fd-muted-foreground">
                {t(`${method.id}.description`)}
              </p>
            </div>
          </div>
        </div>

        <OnboardingCodeBlock
          command={method.command}
          lang={lang}
          className="mb-0"
        />
      </div>
    </Card>
  )
}

// --- Main Component ---

export function OnboardingSection() {
  const t = useTranslations('onboarding')
  const params = useParams()
  const lang = (params?.language as Language) || 'en'

  const installMethods: InstallMethod[] = [
    {
      id: 'npx',
      icon: <IconRocket size={24} />,
      command: 'npx create-yamlresume',
      href: '/docs/ecosystem/create-yamlresume',
    },
    {
      id: 'npm',
      icon: <IconBrandNpm size={24} />,
      command: 'npm install -g yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      id: 'brew',
      icon: <IconTerminal2 size={24} />,
      command: 'brew install yamlresume',
      href: '/docs/installation#yamlresume-cli',
    },
    {
      id: 'docker',
      icon: <IconBrandDocker size={24} />,
      command:
        'docker run --rm -v $(pwd):/home/yamlresume yamlresume/yamlresume new',
      href: '/docs/installation#docker-users',
    },
    {
      id: 'json2yamlresume',
      icon: <IconSwitchHorizontal size={24} />,
      command: 'npx json2yamlresume input.json output.yaml',
      href: '/docs/ecosystem/json2yamlresume',
    },
  ]

  return (
    <Section title={t('sectionTitle')}>
      <div
        className={clsx(
          'grid',
          'grid-cols-1',
          'gap-4',
          'md:gap-6',
          'md:grid-cols-2'
        )}
      >
        {installMethods.map((method) => {
          const isNpx = method.id === 'npx'
          return (
            <div
              key={method.id}
              className={clsx(
                isNpx && 'md:col-span-2 flex justify-center w-full'
              )}
            >
              <OnboardingCard
                method={method}
                t={t}
                lang={lang}
                className={clsx(isNpx && 'w-full md:w-[calc(50%-0.75rem)]')}
              />
            </div>
          )
        })}
      </div>
    </Section>
  )
}
