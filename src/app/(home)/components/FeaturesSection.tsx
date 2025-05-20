import {
  IconBoxMargin,
  IconBrandGit,
  IconLanguage,
  IconLayoutBoard,
  IconMarkdown,
  IconTex,
} from '@tabler/icons-react'
import clsx from 'clsx'

interface FeatureCardProps {
  title: string
  description: string
  icon: React.ReactNode
}

function FeatureCard({ title, description, icon }: FeatureCardProps) {
  return (
    <div
      className={clsx([
        'p-8',
        'border-b',
        'border-r',
        'transition-all',
        'duration-300',
        'hover:bg-white',
        'dark:hover:bg-black',
        'hover:scale-[1.02]',
        'cursor-pointer',
      ])}
    >
      <div className="flex items-center gap-3 mb-3">
        <div
          className={clsx([
            'text-gray-700',
            'dark:text-gray-300',
            'tduration-300',
            'group-hover:scale-110',
          ])}
        >
          {icon}
        </div>
        <h3 className=" text-xl font-semibold">{title}</h3>
      </div>
      <p className="text-fd-muted-foreground8">{description}</p>
    </div>
  )
}

export function FeaturesSection() {
  return (
    <section className="container py-4">
      <div
        className={clsx([
          'grid',
          'grid-cols-1',
          'md:grid-cols-2',
          'lg:grid-cols-3',
          'border-l',
          'border-t',
        ])}
      >
        <FeatureCard
          icon={<IconBrandGit className="h-6 w-6" />}
          title="Plain Text in YAML"
          description={`Create resumes in YAML, which is more human readable and
          writable than JSON, enabling version control and eliminating vendor
          lock-in.`}
        />
        <FeatureCard
          icon={<IconMarkdown className="h-6 w-6" />}
          title="Rich Text in Summaries"
          description={`Express yourself freely with rich text formatting in
          summaries fields for all sections, allowing for more detailed and
          compelling personal statements.`}
        />
        <FeatureCard
          icon={<IconLayoutBoard className="h-6 w-6" />}
          title="Flexible Section Structure"
          description={`Draft and polish your resume with various section types
          to highlight your unique skills, experiences, and achievements in the
          most effective way.`}
        />
        <FeatureCard
          icon={<IconTex className="h-6 w-6" />}
          title="LaTeX Typesetting Engine"
          description={`Leverage the power of LaTeX for professional-grade
          typesetting quality that ensures your resume stands out with perfect
          spacing and typography.`}
        />
        <FeatureCard
          icon={<IconBoxMargin className="h-6 w-6" />}
          title="Customizable Layout Options"
          description={`Fine-tune your resume with customizable page margins,
          font selections, and sizing options to create the perfect visual
          presentation.`}
        />
        <FeatureCard
          icon={<IconLanguage className="h-6 w-6" />}
          title="Multilingual Support"
          description={`Create and translate your resume into multiple languages
          with built-in internationalization and localization capabilities.`}
        />
      </div>
    </section>
  )
}
