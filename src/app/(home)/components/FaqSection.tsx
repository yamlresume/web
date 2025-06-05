'use client'

import { IconChevronDown } from '@tabler/icons-react'
import clsx from 'clsx'
import Link from 'next/link'
import { useState } from 'react'

import { SectionTitle } from './SectionTitle'

type FaqItem = {
  id: string
  question: string
  answer: React.ReactNode
}

export function FaqSection() {
  const [openIndex, setOpenIndex] = useState<number | null>(null)

  const faqs: FaqItem[] = [
    {
      id: 'what-is-yamlresume',
      question: 'What is YAMLResume?',
      answer: (
        <div className="space-y-4">
          <p>
            YAMLResume is a tool that allows you to manage your resume as code
            using YAML. It provides a structured way to define your work
            experience, skills, education, and other resume sections in a simple
            & version-controllable plain text document. YAMLResume then converts
            this YAML data into beautifully typeset PDF documents which is ready
            for job and scholarship applications.
          </p>
          <p>
            YAMLResume started out as the core typesetting engine for{' '}
            <Link
              href="https://ppresume.com"
              className="underline"
              target="_blank"
            >
              PPResume
            </Link>
            , a LaTeX based, pixel perfect resume builder. After careful
            consideration, we decided to open source it so that people can
            always have the right to say{' '}
            <Link
              href="https://blog.ppresume.com/posts/no-vendor-lock-in"
              className="underline"
              target="_blank"
            >
              no to vendor lock-in
            </Link>
            .
          </p>
        </div>
      ),
    },
    {
      id: 'why-yaml-over-json',
      question: 'Why YAML over JSON?',
      answer: (
        <p>
          In a nutshell, YAML was chosen because it's more human-readable and
          human-writable than JSON. Despite its cleaner, less verbose and more
          flexible syntax, YAML also supports comments, allowing you to annotate
          your resume with notes that won't appear in the final output. YAML's
          hierarchical structure naturally maps to the sections and subsections,
          making it perfect for structured data like resumes.
        </p>
      ),
    },
    {
      id: 'how-generate-pdfs',
      question: 'How does YAMLResume generate PDFs?',
      answer: (
        <p>
          YAMLResume is actually a{' '}
          <Link
            href="https://en.wikipedia.org/wiki/Domain-specific_language"
            className="underline"
          >
            DSL
          </Link>{' '}
          for writing resumes, so under the hood it is a compiler for resumes.
          It transforms the YAML data into PDFs in a multi-step process. First,
          it parses the YAML file and validates its structure against a schema.
          Then, it processes the data with a codegen process that generates{' '}
          <Link
            href="https://www.latex-project.org/"
            className="underline"
            target="_blank"
          >
            LaTeX
          </Link>{' '}
          code. Finally, this LaTeX code is compiled into a professional-quality
          PDF using a LaTeX engine. This approach ensures pixel-perfect
          typography and layout that's consistent across all devices and
          platforms.
        </p>
      ),
    },
    {
      id: 'why-latex',
      question: 'Why use LaTeX?',
      answer: (
        <p>
          <Link
            href="https://www.latex-project.org/"
            className="underline"
            target="_blank"
          >
            LaTeX
          </Link>{' '}
          is the gold standard for professional document typesetting, especially
          in academic and technical fields. It provides superior typography with
          proper kerning, ligatures, and hyphenation that's difficult to achieve
          with HTML/CSS or word processors. LaTeX excels at consistent spacing,
          precise positioning and flexible layout. By using LaTeX as the
          underlying typesetting engine, YAMLResume ensures that your resume has
          a polished, professional look that stands out to recruiters and hiring
          managers.
        </p>
      ),
    },
  ]

  const toggleFaq = (index: number) => {
    setOpenIndex(openIndex === index ? null : index)
  }

  return (
    <section className="w-full max-w-screen-lg mx-auto">
      <SectionTitle title="Frequently Asked Questions" />
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
