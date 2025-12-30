import { VSCodeEditor } from './VSCodeEditor'

/**
 * Renders a single YAML engine entry.
 */
interface EngineItemProps {
  /** The name of the rendering engine (e.g., 'latex', 'markdown', 'html') */
  engine: string
}

/**
 * A component representing an engine selection in the YAML layout.
 */
function EngineItem({ engine }: EngineItemProps) {
  return (
    <div>
      <span className="text-neutral-400">{' - '}</span>
      <span className="text-sky-300">engine</span>
      <span className="text-neutral-400">: </span>
      <span className="text-neutral-200">{engine}</span>
    </div>
  )
}

/**
 * Renders a YAML template property.
 */
interface TemplateItemProps {
  /** The name of the template to be used */
  name: string
  /** Number of spaces for indentation */
  indent?: number
}

/**
 * A component representing a template property nested under an engine.
 */
function TemplateItem({ name, indent = 3 }: TemplateItemProps) {
  return (
    <div>
      <span className="text-neutral-400">{' '.repeat(indent)}</span>
      <span className="text-sky-300">template</span>
      <span className="text-neutral-400">: </span>
      <span className="text-neutral-200">{name}</span>
    </div>
  )
}

/**
 * A demo component showcasing the multi-output capability of YAMLResume.
 * Displays a YAML snippet configurating different rendering engines and templates.
 */
export function MultiOutputsDemo() {
  return (
    <VSCodeEditor fileName="resume.yml" loc={7}>
      <div className="relative z-10 whitespace-pre">
        <div className="text-neutral-500">---</div>
        <div>
          <span className="text-sky-300">layouts</span>
          <span className="text-neutral-400">:</span>
        </div>

        <EngineItem engine="latex" />
        <TemplateItem name="moderncv-banking" />

        <EngineItem engine="markdown" />

        <EngineItem engine="html" />
        <TemplateItem name="calm" />
      </div>
    </VSCodeEditor>
  )
}
