import { render, screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { describe, expect, it, vi } from 'vitest'

import { SearchableSelect } from './SearchableSelect'

describe('SearchableSelect', () => {
  const options = ['Engineering', 'Design', 'Marketing']

  function getOption(name: string) {
    return screen.getByTestId(`searchable-select-option-${name}`)
  }

  it('renders placeholder when no value is selected', () => {
    render(
      <SearchableSelect
        value=""
        onChange={() => {}}
        options={options}
        placeholder="Category"
      />
    )

    expect(screen.getByRole('button', { name: 'Category' })).toHaveTextContent(
      'Category'
    )
  })

  it('renders formatted selected value on trigger', () => {
    render(
      <SearchableSelect
        value="Engineering"
        onChange={() => {}}
        options={options}
        placeholder="Category"
        format={(value) => value.toUpperCase()}
      />
    )

    expect(screen.getByRole('button', { name: 'Category' })).toHaveTextContent(
      'ENGINEERING'
    )
  })

  it('renders options in the popover', () => {
    render(
      <SearchableSelect
        value=""
        onChange={() => {}}
        options={options}
        placeholder="Category"
      />
    )

    expect(getOption('Engineering')).toBeInTheDocument()
    expect(getOption('Design')).toBeInTheDocument()
    expect(getOption('Marketing')).toBeInTheDocument()
  })

  it('filters options when typing in the search input', async () => {
    render(
      <SearchableSelect
        value=""
        onChange={() => {}}
        options={options}
        placeholder="Category"
      />
    )

    const input = screen.getByPlaceholderText('Search...')
    await userEvent.type(input, 'eng')

    expect(getOption('Engineering')).toBeInTheDocument()
    expect(
      screen.queryByTestId('searchable-select-option-Design')
    ).not.toBeInTheDocument()
    expect(
      screen.queryByTestId('searchable-select-option-Marketing')
    ).not.toBeInTheDocument()
  })

  it('calls onChange with the selected option', async () => {
    const handleChange = vi.fn()

    render(
      <SearchableSelect
        value=""
        onChange={handleChange}
        options={options}
        placeholder="Category"
      />
    )

    await userEvent.click(getOption('Design'))

    expect(handleChange).toHaveBeenCalledWith('Design')
  })

  it('clears the value when clicking the already selected option', async () => {
    const handleChange = vi.fn()

    render(
      <SearchableSelect
        value="Design"
        onChange={handleChange}
        options={options}
        placeholder="Category"
      />
    )

    await userEvent.click(getOption('Design'))

    expect(handleChange).toHaveBeenCalledWith('')
  })
})
