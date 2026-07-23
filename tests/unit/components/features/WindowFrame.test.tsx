import { render, screen } from '@tests/test-utils'
import { describe, expect, it } from 'vitest'
import { WindowFrame } from '@/app/[language]/(home)/components/features/WindowFrame'

describe('WindowFrame', () => {
  it('renders traffic lights and children', () => {
    const { container } = render(<WindowFrame>Window content</WindowFrame>)

    const dots = container.querySelectorAll(
      '.bg-red-400, .bg-amber-400, .bg-emerald-400'
    )
    expect(dots).toHaveLength(3)
    expect(screen.getByText('Window content')).toBeInTheDocument()
  })

  it('renders header content in the title bar', () => {
    render(<WindowFrame header="Header title">content</WindowFrame>)

    expect(screen.getByText('Header title')).toBeInTheDocument()
  })

  it('applies className to the outer container and contentClassName to the body', () => {
    const { container } = render(
      <WindowFrame className="outer-class" contentClassName="body-class">
        content
      </WindowFrame>
    )

    expect(container.firstChild).toHaveClass('outer-class')
    expect(container.querySelector('.body-class')).toBeInTheDocument()
  })

  it('hides overflow by default', () => {
    const { container } = render(<WindowFrame>content</WindowFrame>)

    const body = container.querySelector('.relative')
    expect(body).toHaveClass('overflow-hidden')
  })

  it('allows overflow when requested', () => {
    const { container } = render(
      <WindowFrame allowOverflow>content</WindowFrame>
    )

    const body = container.querySelector('.relative')
    expect(body).not.toHaveClass('overflow-hidden')
  })
})
