import { defineConfig } from 'vitest/config'

export default defineConfig({
  test: {
    name: 'e2e',
    dir: './tests/e2e',
    globals: true,
    setupFiles: ['./tests/e2e/setup.ts'],
    hookTimeout: 60_000,
    testTimeout: 30_000,
    sequence: {
      hooks: 'list',
    },
  },
})
