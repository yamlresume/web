# AGENTS.md - YAMLResume Web Documentation Site

This file contains guidelines for AI coding agents working in this repository.

## Project Overview

- **Framework**: Next.js 15 (App Router with Turbopack)
- **Language**: TypeScript 5.9
- **Package Manager**: pnpm
- **UI**: React 19 + Tailwind CSS 4
- **Docs Framework**: Fumadocs (fumadocs-core, fumadocs-ui, fumadocs-mdx)
- **Linting/Formatting**: Biome (not ESLint/Prettier)

## Build, Lint, and Test Commands

```bash
# Development
pnpm dev              # Start dev server with Turbopack

# Build
pnpm build            # Production build

# Linting and Formatting (uses Biome)
pnpm check            # Lint and format with auto-fix
pnpm check:ci         # CI mode (no auto-fix, exits with error)

# Note: No test framework is currently configured
```

## Project Structure

```
src/
├── app/
│   ├── [language]/        # i18n dynamic routes (en, es, fr, ja, zh-cn, etc.)
│   │   ├── (home)/        # Homepage and landing pages
│   │   ├── docs/          # Documentation pages
│   │   └── playground/    # Interactive playground
│   ├── api/               # API routes
│   └── (llm)/             # LLM-specific routes
├── components/            # Shared React components
├── config/                # Site configuration
├── i18n/                  # Internationalization
└── lib/                   # Utility functions

content/                   # MDX documentation content
├── docs/                  # English docs
├── blog/                  # English blog
├── es/, fr/, ja/          # Translations
└── zh-cn/, zh-tw/

lib/                       # Root-level utilities (cn.ts for Tailwind merge)
```

## Path Aliases

```typescript
import { Component } from '@/components'      // -> src/components
import { source } from '@/.source'            // -> .source/index.ts (generated)
```

## Code Style Guidelines

### Formatting Rules (Biome)

- **Indentation**: 2 spaces
- **Line width**: 80 characters
- **Semicolons**: As needed (omit when possible)
- **Quotes**: Single quotes for strings
- **Trailing commas**: ES5 style
- **Line endings**: LF

### Import Ordering

Biome auto-organizes imports. Follow this order:

```typescript
'use client'  // Directive first (if needed)

// 1. External libraries
import { IconBook } from '@tabler/icons-react'
import clsx from 'clsx'

// 2. Next.js imports
import Link from 'next/link'
import { useParams } from 'next/navigation'

// 3. React imports
import { useId, useState } from 'react'

// 4. Internal imports (use @/ alias)
import { Component } from '@/components'
import { type Language, useTranslations } from '@/i18n'
```

### TypeScript Patterns

**Type-only imports**: Use `type` keyword for type-only imports:

```typescript
import type { MDXComponents } from 'mdx/types'
import { type Language, useTranslations } from '@/i18n'
```

**Interfaces vs Types**:
- Use `interface` for component props and extensible object shapes
- Use `type` for unions, aliases, and derived types

```typescript
interface FeatureCardProps {
  id: string
  title: string
  className?: string
}

type Language = (typeof languages)[number]
```

### Naming Conventions

| Item | Convention | Example |
|------|------------|---------|
| Component files | PascalCase | `HeroSection.tsx` |
| Utility files | camelCase | `translations.ts` |
| Components | PascalCase | `FeatureCard` |
| Functions | camelCase | `getLocalizedUrl` |
| Variables | camelCase | `defaultLanguage` |
| Types/Interfaces | PascalCase | `SiteConfig` |
| Props interfaces | `{Component}Props` | `FeatureCardProps` |

### Component Structure

```typescript
'use client'  // If using hooks/interactivity

import { useState } from 'react'
import { Component } from '@/components'

// Internal helper components (not exported)
function HelperComponent({ prop }: HelperProps) {
  return <div>{prop}</div>
}

// Main exported component (named export, not default)
export function MainComponent({ title, children }: MainComponentProps) {
  const [state, setState] = useState(false)

  return (
    <div>
      <HelperComponent prop={title} />
      {children}
    </div>
  )
}
```

### Styling Patterns

Use Tailwind CSS with `clsx` for conditional classes:

```typescript
import clsx from 'clsx'

const buttonClasses = clsx([
  'px-4 py-2',
  'rounded-lg',
  'bg-blue-500 hover:bg-blue-600',
  isActive && 'ring-2 ring-blue-300',
])
```

Try to wrap and group long tailwind classes within 80 chars line length with the
help of clsx.

### Error Handling

- Use optional chaining for safe property access
- Provide fallback values for potentially undefined data
- TypeScript's type system handles most compile-time errors

```typescript
const language = (params?.language as Language) || defaultLanguage
const value = (data as Record<string, unknown>)?.[key] || fallback
```

### Internationalization

6 supported languages: `en` (default), `es`, `fr`, `ja`, `zh-cn`, `zh-tw`, more
to come.

```typescript
// Client component
const t = useTranslations('namespace')
t('key')
t.rich('key', { link: (chunks) => <Link href="...">{chunks}</Link> })

// URL generation
import { getLocalizedUrl } from '@/i18n'
const url = getLocalizedUrl('/docs', language)
```

## Git Conventions

### Commit Messages

Uses conventional commits (enforced by commitlint):

```
feat: add new feature
fix: resolve bug
docs: update documentation
style: formatting changes
refactor: code restructuring
```

### Pre-commit Hooks (Husky)

- `pre-commit`: Runs `pnpm check` on staged files via lint-staged
- `commit-msg`: Validates conventional commit format

## CI/CD

GitHub Actions runs on push/PR to main:
1. `pnpm check:ci` - Lint check
2. `pnpm build` - Production build

Matrix: Node 22/24 on Ubuntu, macOS, Windows

## Key Dependencies

- `@yamlresume/playground` - Core playground component
- `fumadocs-*` - Documentation framework
- `mermaid` - Diagram rendering
- `shiki` - Syntax highlighting
- `lucide-react`, `@tabler/icons-react` - Icons
- `zod` - Schema validation
