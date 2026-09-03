import { render, screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it } from 'vitest'
import { YouTube } from '@/components/mdx/YouTube'

const props = {
  id: 'tQodVsmElyg',
  title: 'YAMLResume schema-aware playground demo',
}

describe('YouTube', () => {
  it('renders a local thumbnail without loading YouTube', () => {
    const { container } = render(<YouTube {...props} />)

    expect(screen.queryByTitle(props.title)).not.toBeInTheDocument()
    expect(container.querySelector('img')).toHaveAttribute(
      'src',
      'https://i.ytimg.com/vi/tQodVsmElyg/maxresdefault.jpg'
    )
    expect(
      screen.getByRole('button', { name: `Play video: ${props.title}` })
    ).toBeInTheDocument()
  })

  it('loads the privacy-enhanced player after a click', async () => {
    const user = userEvent.setup()
    render(<YouTube {...props} />)

    await user.click(
      screen.getByRole('button', { name: `Play video: ${props.title}` })
    )

    expect(screen.getByTitle(props.title)).toHaveAttribute(
      'src',
      'https://www.youtube-nocookie.com/embed/tQodVsmElyg?autoplay=1'
    )
  })
})
