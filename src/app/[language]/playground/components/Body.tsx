'use client'

import { Playground } from '@yamlresume/playground'
import { getSampleResume } from '@yamlresume/samples'
import { useSearchParams } from 'next/navigation'
import { useEffect, useState } from 'react'
import { useTranslations } from '@/i18n'

const DEFAULT_RESUME = getSampleResume('software-engineer', 'en', {
  withComments: true,
  withLayouts: true,
})

// TODO: write test cases
export function PlaygroundBody() {
  const t = useTranslations('playground')
  const [resume, setResume] = useState(DEFAULT_RESUME)
  const searchParams = useSearchParams()
  const [hasLoadedSample, setHasLoadedSample] = useState(false)

  useEffect(() => {
    if (hasLoadedSample) {
      return
    }

    const sample = searchParams.get('sample')
    const locale = searchParams.get('locale')

    if (!sample || !locale) {
      setHasLoadedSample(true)
      return
    }

    const templateParams = new URLSearchParams()
    const engine = searchParams.get('engine')
    const template = searchParams.get('template')

    if (engine) {
      templateParams.set('engine', engine)
    }
    if (template) {
      templateParams.set('template', template)
    }

    const query = templateParams.size > 0 ? `?${templateParams}` : ''

    fetch(`/api/gallery/${sample}/${locale}${query}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error('Failed to load sample')
        }
        return response.text()
      })
      .then((yaml) => {
        setResume(yaml)
        setHasLoadedSample(true)
      })
      .catch(() => {
        setHasLoadedSample(true)
      })
  }, [searchParams, hasLoadedSample])

  return (
    <div className="flex-1 h-full">
      <Playground
        yaml={resume}
        onChange={setResume}
        filename="resume.yml"
        messages={{
          tooltips: {
            copy: t('tooltips.copy'),
            undo: t('tooltips.undo'),
            redo: t('tooltips.redo'),
            clear: t('tooltips.clear'),
            print: t('tooltips.print'),
            openInNewTab: t('tooltips.openInNewTab'),
            download: t('tooltips.download'),
          },
        }}
      />
    </div>
  )
}
