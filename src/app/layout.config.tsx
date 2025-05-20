import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared'
import { Logo } from './components'

/**
 * Shared layout configurations
 *
 * you can customise layouts individually from:
 * Home Layout: app/(home)/layout.tsx
 * Docs Layout: app/docs/layout.tsx
 */
export const baseOptions: BaseLayoutProps = {
  nav: {
    title: (
      <>
        <Logo width="24" height="24" className="dark:invert" />
        YAMLResume
      </>
    ),
  },
  links: [
    {
      text: 'Documentation',
      url: '/docs',
      active: 'nested-url',
    },
    {
      text: 'Blog',
      url: '/blog',
      active: 'nested-url',
    },
    {
      text: 'Chat',
      url: 'https://discord.gg/khWmsBmp',
    },
    {
      text: 'Discussions',
      url: 'https://github.com/yamlresume/yamlresume/discussions',
    },
  ],
  githubUrl: 'https://github.com/yamlresume/yamlresume',
}
