import clsx from 'clsx'
import Image from 'next/image'
import Zoom from 'react-medium-image-zoom'
import resumeImage from '../static/images/yamlresume-yaml-and-pdf.webp'

export function YAMLResumePDFSection() {
  return (
    <section className="container mx-auto">
      <div
        className={clsx([
          'relative',
          'overflow-hidden',
          'border',
          'border-gray-400',
          'shadow-lg',
        ])}
        style={{
          borderRadius: '6px',
        }}
      >
        <Zoom zoomMargin={32}>
          <Image
            src={resumeImage}
            alt="YAMLResume preview showing YAML code and PDF output"
            priority
          />
        </Zoom>
      </div>
    </section>
  )
}
