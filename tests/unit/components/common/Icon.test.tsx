import { IconHome } from '@tabler/icons-react'
import { render } from '@testing-library/react'
import { describe, expect, it } from 'vitest'

import { Icon } from '@/app/[language]/(home)/components/common/Icon'

describe('Icon', () => {
  it('renders the provided Tabler icon', () => {
    const { container } = render(<Icon icon={IconHome} />)
    expect(container.querySelector('svg')).toBeInTheDocument()
  })

  it('applies default size and stroke', () => {
    const { container } = render(<Icon icon={IconHome} />)
    const svg = container.querySelector('svg')
    expect(svg).toHaveAttribute('width', '24')
    expect(svg).toHaveAttribute('stroke-width', '1.25')
  })

  it('allows size and stroke overrides', () => {
    const { container } = render(<Icon icon={IconHome} size={32} stroke={2} />)
    const svg = container.querySelector('svg')
    expect(svg).toHaveAttribute('width', '32')
    expect(svg).toHaveAttribute('stroke-width', '2')
  })

  it('merges custom classes with the default foreground class', () => {
    const { container } = render(<Icon icon={IconHome} className="ml-2" />)
    expect(container.firstChild).toHaveClass('text-fd-foreground/60', 'ml-2')
  })

  it('marks the icon as hidden from accessibility', () => {
    const { container } = render(<Icon icon={IconHome} aria-label="home" />)
    expect(container.querySelector('svg')).toHaveAttribute(
      'aria-hidden',
      'true'
    )
  })
})
