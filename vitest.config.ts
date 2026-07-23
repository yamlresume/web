import fs from 'node:fs'
import path from 'node:path'
import { defineConfig } from 'vitest/config'

const ROOT = process.cwd()
const SRC_ROOT = path.resolve(ROOT, './src')
const TESTS_ROOT = path.resolve(ROOT, './tests/unit')
const IMAGE_MOCK = path.resolve(ROOT, './tests/unit/mocks/image.ts')
const EXTENSIONS = ['', '.tsx', '.ts', '.jsx', '.js']
const INDEX_EXTENSIONS = ['/index.tsx', '/index.ts', '/index.jsx', '/index.js']

function resolveWithExtensions(
  root: string,
  bare: string,
  extensions: string[],
  indexExtensions: string[]
) {
  for (const ext of extensions) {
    const candidate = path.resolve(root, bare + ext)
    if (fs.existsSync(candidate) && fs.statSync(candidate).isFile()) {
      return candidate
    }
  }

  for (const ext of indexExtensions) {
    const candidate = path.resolve(root, bare + ext)
    if (fs.existsSync(candidate) && fs.statSync(candidate).isFile()) {
      return candidate
    }
  }

  return null
}

/**
 * Vite resolver for Next.js-style `@/` aliases, including dynamic route
 * segments with brackets and parentheses that Vite's default glob resolver
 * cannot handle.
 */
function aliasResolver() {
  return {
    name: 'next-alias-resolver',
    enforce: 'pre' as const,
    resolveId(id: string) {
      if (/\.(png|jpg|jpeg|gif|webp|svg|ico|bmp|tiff)(\?.*)?$/.test(id)) {
        return IMAGE_MOCK
      }

      if (id.startsWith('@tests/')) {
        const bare = id.slice('@tests/'.length)
        return resolveWithExtensions(
          TESTS_ROOT,
          bare,
          EXTENSIONS,
          INDEX_EXTENSIONS
        )
      }

      if (!id.startsWith('@/')) return null

      const bare = id.slice(2)
      return resolveWithExtensions(SRC_ROOT, bare, EXTENSIONS, INDEX_EXTENSIONS)
    },
  }
}

export default defineConfig({
  plugins: [aliasResolver()],
  test: {
    name: 'unit',
    dir: './tests/unit',
    globals: true,
    environment: 'jsdom',
    setupFiles: ['./tests/unit/setup.tsx'],
    coverage: {
      provider: 'v8',
      reporter: ['text', 'json', 'html'],
      include: ['src/**/*.{ts,tsx}'],
      exclude: [
        'src/app/layout.tsx',
        'src/app/**/page.tsx',
        'src/app/**/page.ts',
        'src/app/**/layout.tsx',
        'src/app/**/layout.ts',
        'src/app/**/route.tsx',
        'src/app/**/route.ts',
        'src/app/**/StatsSection.tsx',
        'src/app/manifest.ts',
        'src/app/robots.ts',
        'src/app/sitemap.ts',
        'src/app/sitemap.xml',
        'src/config/**',
        'src/lib/**',
        'src/middleware.ts',
        'node_modules',
        'tests',
      ],
    },
  },
})
