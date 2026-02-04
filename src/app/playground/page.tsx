import { PlaygroundBody, PlaygroundHeader } from './components'

// TODO: write test cases
export default function PlaygroundPage() {
  return (
    <div className="h-screen w-screen flex flex-col bg-neutral-900 text-neutral-100 overflow-hidden">
      <PlaygroundHeader />
      <PlaygroundBody />
    </div>
  )
}
