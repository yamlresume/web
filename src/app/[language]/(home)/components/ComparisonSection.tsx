'use client'

import clsx from 'clsx'
import {
  ReactCompareSlider,
  ReactCompareSliderImage,
} from 'react-compare-slider'

import htmlPdf from '@/components/static/images/andy-dufresne-rxresume-example.png'
import yamlresumePdf from '@/components/static/images/moderncv-banking-template.png'
import { useTranslations } from '@/i18n'
import { Section } from './common'

const labelStyle = clsx(
  'absolute',
  'bottom-4',
  'text-white',
  'text-xs',
  'px-3',
  'py-1.5',
  'font-semibold',
  'pointer-events-none'
)

function Label({
  side,
  children,
  color = 'blue',
}: {
  side: 'left' | 'right'
  children: React.ReactNode
  color?: 'red' | 'green' | 'blue' | 'gray'
}) {
  return (
    <div
      className={clsx(
        labelStyle,
        side === 'left' ? 'left-0' : 'right-0',
        color === 'red' && 'bg-red-600',
        color === 'green' && 'bg-emerald-600',
        color === 'blue' && 'bg-blue-600',
        color === 'gray' && 'bg-gray-600'
      )}
    >
      {children}
    </div>
  )
}

export function ComparisonSection() {
  const t = useTranslations('comparison')

  return (
    <Section title={t('sectionTitle')} className="max-w-4xl">
      <section
        className="relative overflow-hidden border border-fd-border shadow-lg aspect-[5/7]"
        aria-label="Resume comparison slider"
      >
        <ReactCompareSlider
          boundsPadding="0px"
          className="w-full h-full"
          itemOne={
            <div className="w-full h-full relative group overflow-hidden">
              <ReactCompareSliderImage
                src={htmlPdf.src}
                alt="RxResume PDF"
                className="w-full h-full object-contain"
              />
              <Label side="left" color="gray">
                Conventional
              </Label>
            </div>
          }
          itemTwo={
            <div className="w-full h-full relative group overflow-hidden">
              <ReactCompareSliderImage
                src={yamlresumePdf.src}
                alt="YAMLResume PDF"
                className="w-full h-full object-contain"
              />
              <Label side="right" color="green">
                YAMLResume
              </Label>
            </div>
          }
          keyboardIncrement="5%"
          transition="0.25s cubic-bezier(.17,.67,.83,.67)"
          defaultPosition={50}
        />
      </section>
    </Section>
  )
}
