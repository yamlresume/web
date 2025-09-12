'use client'

import clsx from 'clsx'
import { DynamicCodeBlock } from 'fumadocs-ui/components/dynamic-codeblock'
import Image from 'next/image'
import Link from 'next/link'
import { useParams } from 'next/navigation'
import Zoom from 'react-medium-image-zoom'

import dockerDemoImage from '@/components/static/images/yamlresume-docker-demo.svg'
import { defaultLanguage, getLocalizedUrl, useTranslations } from '@/i18n'
import { SectionTitle } from './SectionTitle'

export function DockerDemoSection() {
  const t = useTranslations('quickStart')

  const params = useParams()
  const language = (params?.language as string) || defaultLanguage

  const line1 = [
    'docker run --rm -v $(pwd):/home/yamlresume',
    'yamlresume/yamlresume new my-resume.yml',
  ].join(' ')

  const line2 = [
    'docker run --rm -v $(pwd):/home/yamlresume',
    'yamlresume/yamlresume build my-resume.yml',
  ].join(' ')

  const code = [line1, line2].join('\n')

  return (
    <section className="container mx-auto max-w-4xl">
      <div className={clsx(['relative', 'overflow-hidden'])}>
        <div className="space-y-8">
          <div>
            <SectionTitle
              title={
                <Link
                  href={getLocalizedUrl(
                    '/docs/installation#docker-users',
                    language
                  )}
                  className={clsx([
                    'max-w-4/5',
                    'font-medium',
                    'py-2',
                    'px-4',
                    'rounded-none',
                    'transition-colors',
                    'inline-block',
                    'shadow-[4px_4px_0px_0px_rgba(0,0,0,0.9)]',
                    'dark:shadow-[4px_4px_0px_0px_rgba(255,255,255,0.9)]',
                    'hover:shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
                    'dark:hover:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]',
                    'hover:translate-x-[2px]',
                    'hover:translate-y-[2px]',
                  ])}
                >
                  {t('title')}
                </Link>
              }
            />
            <DynamicCodeBlock lang="bash" code={code} />
          </div>
          <div>
            <Zoom zoomMargin={32}>
              <Image
                src={dockerDemoImage}
                alt="YAMLResume preview showing YAML code and PDF output"
                priority
                className="rounded-[6px]"
              />
            </Zoom>
          </div>
        </div>
      </div>
    </section>
  )
}
