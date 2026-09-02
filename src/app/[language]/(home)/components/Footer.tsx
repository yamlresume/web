'use client'

import { IconBrandDiscord, IconBrandGithub } from '@tabler/icons-react'
import Link from 'next/link'

import { Logo } from '@/components'
import { getLocalizedUrl, type Language, useTranslations } from '@/i18n'

interface FooterProps {
  language: Language
}

interface FooterLink {
  label: string
  href: string
  external?: boolean
}

function FooterColumn({
  title,
  links,
}: {
  title: string
  links: FooterLink[]
}) {
  return (
    <div>
      <h3 className="text-sm font-semibold mb-3">{title}</h3>
      <ul className="flex flex-col gap-2 text-sm text-fd-muted-foreground">
        {links.map((link) => (
          <li key={link.href}>
            <Link
              href={link.href}
              target={link.external ? '_blank' : undefined}
              rel={link.external ? 'noopener noreferrer' : undefined}
              className="hover:text-fd-foreground transition-colors"
            >
              {link.label}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  )
}

export function Footer({ language }: FooterProps) {
  const t = useTranslations('footer')
  const navbar = useTranslations('navbar')
  const hero = useTranslations('hero')

  const homeUrl = getLocalizedUrl('/', language)

  const productLinks: FooterLink[] = [
    {
      label: navbar('documentation'),
      href: getLocalizedUrl('/docs', language),
    },
    {
      label: navbar('gallery'),
      href: getLocalizedUrl('/gallery', language),
    },
    {
      label: navbar('blog'),
      href: getLocalizedUrl('/blog', language),
    },
  ]

  const developerLinks: FooterLink[] = [
    { label: 'CLI', href: `/${language}/developer/cli/index.html` },
    {
      label: 'create-yamlresume',
      href: `/${language}/developer/create-yamlresume/index.html`,
    },
    {
      label: 'json2yamlresume',
      href: `/${language}/developer/json2yamlresume/index.html`,
    },
    { label: '@yamlresume/ai', href: `/${language}/developer/ai/index.html` },
    {
      label: '@yamlresume/core',
      href: `/${language}/developer/core/index.html`,
    },
    {
      label: '@yamlresume/node',
      href: `/${language}/developer/node/index.html`,
    },
    {
      label: '@yamlresume/playground',
      href: `/${language}/developer/playground/index.html`,
    },
    {
      label: '@yamlresume/samples',
      href: `/${language}/developer/samples/index.html`,
    },
  ]

  const communityLinks: FooterLink[] = [
    {
      label: navbar('chat'),
      href: 'https://discord.gg/9SyT7mVV4K',
      external: true,
    },
    {
      label: navbar('discussions'),
      href: 'https://github.com/yamlresume/yamlresume/discussions',
      external: true,
    },
  ]

  const socialLinks = [
    {
      label: 'GitHub',
      href: 'https://github.com/yamlresume/yamlresume',
      icon: IconBrandGithub,
    },
    {
      label: 'Discord',
      href: 'https://discord.gg/9SyT7mVV4K',
      icon: IconBrandDiscord,
    },
  ]

  return (
    <footer className="w-full border-t border-fd-foreground/10">
      <div className="fd-container py-12">
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8 pb-8 border-b border-fd-foreground/10">
          <div className="sm:col-span-2 lg:col-span-1">
            <Link
              href={homeUrl}
              className="inline-flex items-center gap-2 font-bold text-lg"
            >
              <Logo width="24" height="24" className="dark:invert" />
              YAMLResume
            </Link>
            <p className="mt-4 text-sm text-fd-muted-foreground">
              {hero('description')}
            </p>
            <div className="flex items-center gap-2 mt-4">
              {socialLinks.map((social) => (
                <Link
                  key={social.label}
                  href={social.href}
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label={social.label}
                  className="p-2 rounded-lg border hover:bg-fd-muted transition-colors"
                >
                  <social.icon size={18} />
                </Link>
              ))}
            </div>
          </div>

          <FooterColumn title="Community" links={communityLinks} />
          <FooterColumn title="Docs" links={productLinks} />
          <FooterColumn title={navbar('developer')} links={developerLinks} />
        </div>

        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 pt-8">
          <div className="text-sm text-fd-muted-foreground">
            {t('copyright')}
            <Link
              href="https://ppresume.com"
              target="_blank"
              rel="noopener noreferrer"
              className="hover:underline"
            >
              PPResume
            </Link>
          </div>

          <nav aria-label="Languages">
            <ul className="flex flex-wrap gap-x-4 gap-y-1 text-sm text-fd-muted-foreground">
              <li>
                <Link href="/" className="hover:underline">
                  English
                </Link>
              </li>
              <li>
                <Link href="/es" className="hover:underline">
                  Español
                </Link>
              </li>
              <li>
                <Link href="/fr" className="hover:underline">
                  Français
                </Link>
              </li>
              <li>
                <Link href="/ja" className="hover:underline">
                  日本語
                </Link>
              </li>
              <li>
                <Link href="/pt" className="hover:underline">
                  Português
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
