import { IconBook, IconBrandGithub } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'

export function HeroSection() {
  const linkClasses = clsx([
    'border',
    'border-gray-400',
    'font-medium',
    'py-2',
    'px-4',
    'rounded-none',
    'transition-colors',
    'flex',
    'items-center',
    'gap-2',
    'shadow-[4px_4px_0px_0px_rgba(0,0,0,0.9)]',
    'dark:shadow-[4px_4px_0px_0px_rgba(255,255,255,0.9)]',
    'hover:shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
    'dark:hover:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]',
    'hover:translate-x-[2px]',
    'hover:translate-y-[2px]',
  ])

  return (
    <section className="container mx-auto py-4">
      <div className="flex flex-col items-start gap-8">
        <div className="flex flex-col items-start gap-4">
          <p className="text-sm text-fd-muted-foreground2">
            Brought to you with ❤️ by{' '}
            <Link
              href="https://ppresume.com"
              target="_blank"
              className="underline"
            >
              PPResume
            </Link>
          </p>
          <h1 className="text-4xl md:text-5xl font-bold">
            Resumes as Code in YAML
          </h1>
          <p className="text-xl text-fd-muted-foreground8">
            YAMLResume allows you to create and version control your resumes
            using YAML and generate pixel perfect PDFs with professional layout
            and typesetting in a breeze.
          </p>
        </div>
        <div className="flex flex-wrap items-start justify-center gap-4">
          <Link href="/docs" className={linkClasses}>
            <IconBook className="h-5 w-5" />
            Quick Start
          </Link>
          <Link
            href="https://github.com/yamlresume/yamlresume"
            target="_blank"
            className={linkClasses}
          >
            <IconBrandGithub className="h-5 w-5" />
            Check Github
          </Link>
        </div>
      </div>
    </section>
  )
}
