import clsx from 'clsx'
import Image from 'next/image'
import Zoom from 'react-medium-image-zoom'

export function ImageSection() {
  return (
    <section className="max-w-screen-xl mx-auto">
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
        <Zoom>
          <Image
            src="/static/assets/landing/yamlresume-yaml-and-pdf.png"
            alt="YAMLResume preview showing YAML code and PDF output"
            width={1200}
            height={663}
            className="w-full h-auto"
            priority
          />
        </Zoom>
      </div>
    </section>
  )
}
