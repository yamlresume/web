'use client'

import Link from 'next/link'

import { useTranslations } from '@/i18n'

export function Footer() {
  const t = useTranslations('footer')

  return (
    <footer className="w-full py-12 border-t border-fd-foreground/10 mt-16">
      <div className="flex justify-center">
        <div className="container mx-4 grow flex items-start justify-between">
          <div className="text-fd-muted-foreground2">
            {t('copyright')}
            <Link href="https://ppresume.com" target="_blank">
              PPResume
            </Link>
          </div>

          <nav aria-label="Languages" className="ml-auto">
            <ul className="flex flex-col items-end gap-1 text-sm text-fd-muted-foreground2">
              <li>
                <Link href="/fr" className="hover:underline">
                  Français
                </Link>
              </li>
              <li>
                <Link href="/zh-cn" className="hover:underline">
                  简体中文
                </Link>
              </li>
              <li>
                <Link href="/zh-tw" className="hover:underline">
                  繁體中文
                </Link>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </footer>
  )
}
