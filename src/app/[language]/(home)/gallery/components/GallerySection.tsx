'use client'

interface GallerySectionProps {
  title: string
  description?: string
  children: React.ReactNode
}

export function GallerySection({
  title,
  description,
  children,
}: GallerySectionProps) {
  return (
    <section className="fd-container px-6 py-12">
      <div className="flex flex-col md:flex-row md:items-end justify-between gap-4 mb-8">
        <div>
          <h2 className="text-2xl font-bold">{title}</h2>
          {description && (
            <p className="text-fd-muted-foreground mt-1">{description}</p>
          )}
        </div>
      </div>
      {children}
    </section>
  )
}
