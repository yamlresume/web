import '@testing-library/jest-dom/vitest'
import { vi } from 'vitest'

// Polyfills for browser APIs not implemented in jsdom
class ResizeObserverMock {
  observe() {}
  unobserve() {}
  disconnect() {}
}

global.ResizeObserver = ResizeObserverMock

global.matchMedia =
  global.matchMedia ||
  function matchMedia() {
    return {
      matches: false,
      addListener() {},
      removeListener() {},
      addEventListener() {},
      removeEventListener() {},
      dispatchEvent() {
        return false
      },
    } as unknown as MediaQueryList
  }

Object.defineProperty(global, 'navigator', {
  value: {
    clipboard: {
      writeText: vi.fn().mockResolvedValue(undefined),
      write: vi.fn().mockResolvedValue(undefined),
    },
    userAgent: 'node.js',
  },
  writable: true,
  configurable: true,
})

// Mock Next.js routing
vi.mock('next/navigation', async () => import('./mocks/navigation'))

// Reset shared mocks before each test
beforeEach(async () => {
  const { setMockParams } = await import('./mocks/navigation')
  setMockParams({ language: 'en' })
})

// Mock Next.js image component
vi.mock('next/image', () => ({
  default: function MockImage({
    src,
    alt,
    fill,
    priority: _priority,
    sizes: _sizes,
    className,
    ...rest
  }: {
    src: string | { src: string }
    alt?: string
    fill?: boolean
    priority?: boolean
    sizes?: string
    className?: string
  }) {
    const resolvedSrc = typeof src === 'string' ? src : src.src
    return (
      // biome-ignore lint/performance/noImgElement: mock for next/image in tests
      <img
        src={resolvedSrc}
        alt={alt || ''}
        data-fill={fill ? 'true' : undefined}
        className={className}
        {...rest}
      />
    )
  },
}))

// Mock Next.js link component
vi.mock('next/link', () => ({
  default: function MockLink({
    href,
    children,
    ...rest
  }: {
    href: string
    children: React.ReactNode
  }) {
    return (
      <a href={href} {...rest}>
        {children}
      </a>
    )
  },
}))

// Mock Next.js script component
vi.mock('next/script', () => ({
  default: function MockScript(props: Record<string, unknown>) {
    return <script {...props} />
  },
}))

// Mock heavy / interactive third-party packages
vi.mock('@yamlresume/playground', () => ({
  Playground: function MockPlayground({ yaml }: { yaml: string }) {
    return <pre data-testid="playground-mock">{yaml}</pre>
  },
}))

vi.mock('next-themes', () => ({
  useTheme: () => ({
    theme: 'light',
    resolvedTheme: 'light',
    setTheme: vi.fn(),
  }),
  ThemeProvider: ({ children }: { children: React.ReactNode }) => (
    <>{children}</>
  ),
}))

vi.mock('mermaid', () => ({
  default: {
    initialize: vi.fn(),
    render: vi.fn(async () => ({
      svg: '<svg data-testid="mermaid-svg"><text>Diagram</text></svg>',
      bindFunctions: vi.fn(),
    })),
  },
}))

// Mock Fumadocs UI pieces used by the project
vi.mock('fumadocs-ui/components/ui/button', () => ({
  buttonVariants: ({
    color,
    size,
    className,
  }: {
    color?: string
    size?: string
    className?: string
  }) => `btn-${color || 'default'} btn-${size || 'default'} ${className || ''}`,
}))

vi.mock('fumadocs-ui/components/ui/popover', () => ({
  Popover: ({ children }: { children: React.ReactNode }) => <>{children}</>,
  PopoverTrigger: ({ children, ...props }: { children: React.ReactNode }) => (
    <button type="button" {...props}>
      {children}
    </button>
  ),
  PopoverContent: ({ children }: { children: React.ReactNode }) => (
    <div data-testid="popover-content">{children}</div>
  ),
}))

vi.mock('fumadocs-ui/utils/use-copy-button', () => {
  const { useState } = require('react')
  return {
    useCopyButton: (onClick: () => Promise<void> | void) => {
      const [checked, setChecked] = useState(false)
      const handleClick = async () => {
        await onClick()
        setChecked(true)
      }
      return [checked, handleClick] as const
    },
  }
})

vi.mock('fumadocs-ui/mdx', () => ({
  default: {
    p: ({ children }: { children: React.ReactNode }) => <p>{children}</p>,
  },
}))

vi.mock('fumadocs-ui/components/image-zoom', () => ({
  ImageZoom: (props: Record<string, unknown>) => (
    <>
      {/* biome-ignore lint/performance/noImgElement: mock for fumadocs ImageZoom in tests */}
      <img alt="" {...props} />
    </>
  ),
}))
