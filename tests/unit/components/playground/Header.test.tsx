import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { PlaygroundHeader } from '@/app/[language]/playground/components/Header'

const expectations: Record<
  string,
  { documentation: string; playground: string }
> = {
  en: { documentation: 'Documentation', playground: 'Playground' },
  es: { documentation: 'Documentación', playground: 'Playground' },
  fr: { documentation: 'Documentation', playground: 'Playground' },
  ja: { documentation: 'ドキュメント', playground: 'プレイグラウンド' },
  pt: { documentation: 'Documentação', playground: 'Playground' },
  id: { documentation: 'Dokumentasi', playground: 'Playground' },
  'zh-cn': { documentation: '文档', playground: '演练场' },
  'zh-tw': { documentation: '文檔', playground: '演練場' },
}

describe('PlaygroundHeader', () => {
  for (const [language, expected] of Object.entries(expectations)) {
    it(`renders the ${language} header`, () => {
      render(
        <PlaygroundHeader language={language as keyof typeof expectations} />
      )

      expect(
        screen.getByTitle('YAMLResume Logo - Balanced Y with Padding')
      ).toBeInTheDocument()
      expect(screen.getByText('YAMLResume')).toBeInTheDocument()
      expect(screen.getByText(expected.playground)).toBeInTheDocument()

      const homeLink = screen.getByText('YAMLResume').closest('a')
      expect(homeLink).toHaveAttribute(
        'href',
        language === 'en' ? '/' : `/${language}/`
      )

      expect(
        screen.getByRole('link', { name: expected.documentation })
      ).toHaveAttribute(
        'href',
        language === 'en' ? '/docs' : `/${language}/docs`
      )

      const githubLink = screen.getByRole('link', { name: 'GitHub' })
      expect(githubLink).toHaveAttribute(
        'href',
        'https://github.com/yamlresume/yamlresume'
      )
      expect(githubLink).toHaveAttribute('target', '_blank')
    })
  }
})
