import { PlaygroundBody, PlaygroundHeader } from './components'

// TODO: write test cases
export default async function PlaygroundPage(props: {
  params: Promise<{ language: string }>
}) {
  const params = await props.params
  const { language } = params
  return (
    <div className="h-screen w-screen flex flex-col bg-neutral-900 text-neutral-100 overflow-hidden">
      <PlaygroundHeader language={language} />
      <PlaygroundBody />
    </div>
  )
}
