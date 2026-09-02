'use client'

import clsx from 'clsx'
import { useTranslations } from '@/i18n'

interface GalleryEmptyStateProps {
  onClear: () => void
}

export function GalleryEmptyState({ onClear }: GalleryEmptyStateProps) {
  const t = useTranslations('gallery')

  return (
    <div className={clsx(['py-20', 'text-center'])}>
      <p className="text-fd-muted-foreground">{t('noResults')}</p>
      <button
        type="button"
        onClick={onClear}
        className={clsx([
          'mt-4',
          'text-sm',
          'font-medium',
          'text-fd-primary',
          'hover:underline',
        ])}
      >
        {t('clearFilters')}
      </button>
    </div>
  )
}
