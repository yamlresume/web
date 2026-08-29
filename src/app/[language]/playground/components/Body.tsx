'use client'

import { Playground } from '@yamlresume/playground'
import { getSampleResume } from '@yamlresume/samples'
import { useLocalStorage } from 'usehooks-ts'
import { useTranslations } from '@/i18n'

const DEFAULT_RESUME = getSampleResume('software-engineer', 'en', {
  withComments: true,
  withLayouts: true,
})

// TODO: write test cases
export function PlaygroundBody() {
  const t = useTranslations('playground')
  const [resume, setResume] = useLocalStorage(
    'yamlresume-resume',
    DEFAULT_RESUME
  )

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
