import { notFound } from 'next/navigation'
import { ImageResponse } from 'next/og'

import { OpenGraph } from '@/app/api/og/components'
import { blogSource } from '@/lib/source'

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ slug: string[] }> }
) {
  const { slug } = await params
  const page = blogSource.getPage(slug.slice(0, -1))
  if (!page) notFound()

  return new ImageResponse(<OpenGraph title={page.data.title} />, {
    width: 1200,
    height: 630,
  })
}

export function generateStaticParams() {
  return blogSource.generateParams().map((page) => ({
    ...page,
    slug: [...page.slug, 'open-graph.png'],
  }))
}
