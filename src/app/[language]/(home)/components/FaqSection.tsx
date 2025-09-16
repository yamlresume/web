'use client'

import { IconChevronDown } from '@tabler/icons-react'
import clsx from 'clsx'
import { useState } from 'react'

import { useTranslations } from '@/i18n'

import { SectionTitle } from './SectionTitle'

type FaqItem = {
  id: string
  question: string
  answer: React.ReactNode
}

export function FaqSection() {
  const [openIndex, setOpenIndex] = useState<number | null>(null)
  const t = useTranslations('faq')

  const faqs: FaqItem[] = [
    {
      id: 'what-is-yamlresume',
      question: t('questions.whatIs.question'),
      answer: (
        <div className="space-y-4">
          <p>{t('questions.whatIs.answer1')}</p>
          <p>{t('questions.whatIs.answer2')}</p>
        </div>
      ),
    },
    {
      id: 'why-yaml-over-json',
      question: t('questions.whyYaml.question'),
      answer: <p>{t('questions.whyYaml.answer')}</p>,
    },
    {
      id: 'how-generate-pdfs',
      question: t('questions.howGeneratePdf.question'),
      answer: <p>{t('questions.howGeneratePdf.answer')} </p>,
    },
    {
      id: 'why-latex',
      question: t('questions.whyLatex.question'),
      answer: <p>{t('questions.whyLatex.answer')}</p>,
    },
  ]

  const toggleFaq = (index: number) => {
    setOpenIndex(openIndex === index ? null : index)
  }

  return (
    <section className="w-full max-w-screen-lg mx-auto">
      <SectionTitle title={t('title')} />
      <div className="space-y-4">
        {faqs.map((faq, index) => (
          <div
            key={faq.id}
            className={clsx([
              'border',
              'border-gray-400',
              'text-gray-700',
              'dark:text-gray-300',
              'rounded-none',
              'shadow-[2px_2px_0px_0px_rgba(0,0,0,0.9)]',
              'dark:shadow-[2px_2px_0px_0px_rgba(255,255,255,0.9)]',
              'transition-colors',
              openIndex === index ? 'bg-gray-50 dark:bg-gray-950' : '',
            ])}
          >
            <button
              type="button"
              onClick={() => toggleFaq(index)}
              className={clsx([
                'flex',
                'justify-between',
                'items-center',
                'w-full',
                'p-4',
                'text-left',
                'font-medium',
                'hover:bg-white',
                'dark:hover:bg-black',
                'transition-colors',
                openIndex === index ? 'bg-white dark:bg-black' : '',
              ])}
              aria-expanded={openIndex === index}
            >
              <span>{faq.question}</span>
              <IconChevronDown
                className={clsx([
                  'transition-transform',
                  openIndex === index ? 'transform rotate-180' : '',
                ])}
              />
            </button>
            <div
              className={clsx([
                'overflow-hidden transition-all duration-300 ease-in-out',
                openIndex === index
                  ? 'max-h-96 opacity-100'
                  : 'max-h-0 opacity-0',
              ])}
            >
              <div className="p-4 border-t">{faq.answer}</div>
            </div>
          </div>
        ))}
      </div>
    </section>
  )
}
