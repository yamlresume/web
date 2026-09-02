import { IconBriefcase, IconLanguage, IconTemplate } from '@tabler/icons-react'
import Link from 'next/link'
import { getGalleryMessages, getLocalizedUrl, type Language } from '@/i18n'

export function GalleryExploreMore({ language }: { language: Language }) {
  const copy = getGalleryMessages(language)
  const links = [
    {
      path: '/gallery/templates',
      label: copy.categories.templates.title,
      description: copy.categories.templates.description,
      icon: IconTemplate,
    },
    {
      path: '/gallery/languages',
      label: copy.categories.languages.title,
      description: copy.categories.languages.description,
      icon: IconLanguage,
    },
    {
      path: '/gallery/examples',
      label: copy.categories.examples.title,
      description: copy.categories.examples.description,
      icon: IconBriefcase,
    },
  ]

  return (
    <section className="border-t border-fd-border bg-fd-muted/30">
      <div className="fd-container px-6 py-10 md:py-14">
        <h2 className="mb-6 text-2xl font-bold">{copy.browseAll}</h2>
        <div className="grid gap-4 md:grid-cols-3">
          {links.map(({ path, label, description, icon: Icon }) => (
            <Link
              key={path}
              href={getLocalizedUrl(path, language)}
              className="group border border-fd-border bg-fd-card p-5 transition-colors hover:border-fd-primary"
            >
              <div className="mb-3 flex items-center gap-3">
                <Icon aria-hidden="true" size={20} />
                <h3 className="font-bold group-hover:text-fd-primary">
                  {label}
                </h3>
              </div>
              <p className="text-sm text-fd-muted-foreground">{description}</p>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}
