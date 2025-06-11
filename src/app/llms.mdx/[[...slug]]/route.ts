import { getLLMText } from '@/lib/llm'
import { blogSource, docsSource } from '@/lib/source'
import { notFound } from 'next/navigation'

export const revalidate = false

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ slug?: string[] }> }
) {
  const { slug } = await params

  const docsPage = docsSource.getPage(slug)
  const blogPage = blogSource.getPage(slug)

  const page = docsPage ?? blogPage

  if (!page) notFound()

  return new Response(await getLLMText(page))
}

export function generateStaticParams() {
  return [...docsSource.generateParams(), ...blogSource.generateParams()].flat()
}
