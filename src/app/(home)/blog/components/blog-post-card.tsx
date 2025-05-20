import clsx from 'clsx'

interface BlogPostProps {
  title: string
  description: string
  date: string | Date
}

export function BlogPostCard({ title, description, date }: BlogPostProps) {
  return (
    <div
      className={clsx([
        'p-8',
        'border-b',
        'border-r',
        'transition-all',
        'duration-300',
        'bg-gray-200',
        'dark:bg-gray-800',
        'hover:bg-white',
        'dark:hover:bg-black',
        'hover:scale-[1.02]',
        'cursor-pointer',
      ])}
    >
      <div className="flex items-center gap-3 mb-3">
        <h3 className="text-xl font-semibold">{title}</h3>
      </div>
      <div className="flex flex-col gap-2">
        <p className="text-fd-muted-foreground8">{description}</p>
        <p className="text-fd-muted-foreground9 text-sm">
          {date instanceof Date ? date.toDateString() : date}
        </p>
      </div>
    </div>
  )
}
