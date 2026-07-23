import { render } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { Cursor } from '@/app/[language]/(home)/components/features/Cursor'

describe('Cursor', () => {
  it('renders a pulsing cursor with the default styles', () => {
    const { container } = render(<Cursor />)
    const cursor = container.firstChild as HTMLElement

    expect(cursor.tagName).toBe('SPAN')
    expect(cursor).toHaveClass(
      'inline-block',
      'h-[1.2rem]',
      'w-[2px]',
      'animate-pulse',
      'bg-neutral-200',
      'align-middle'
    )
  })

  it('applies a custom className', () => {
    const { container } = render(<Cursor className="text-red-500" />)

    expect(container.firstChild).toHaveClass('text-red-500')
  })
})
