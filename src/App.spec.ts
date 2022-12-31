import { render } from '@testing-library/svelte'
import App from './App.svelte'

test('Should render App.Svelte', () => {
  const { getByText } = render(App)
  const componentText = getByText('Svelte Frontend Template')

  expect(componentText).toBeTruthy()
})
