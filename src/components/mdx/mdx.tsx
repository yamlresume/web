import { ImageZoom } from 'fumadocs-ui/components/image-zoom'
import defaultComponents from 'fumadocs-ui/mdx'
import type { MDXComponents } from 'mdx/types'

import { Mermaid } from '@/components'
import { YouTube } from './YouTube'

export function getMDXComponents(components?: MDXComponents): MDXComponents {
  return {
    ...defaultComponents,
    Mermaid,
    YouTube,
    img: (props) => <ImageZoom {...props} src={props.src as string} />,
    ...components,
  }
}
