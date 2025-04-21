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
  ],
  githubUrl: 'https://github.com/yamlresume/yamlresume',
}
