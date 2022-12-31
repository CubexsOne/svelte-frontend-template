import type { Config } from 'jest'

const config: Config = {
  verbose: true,
  testEnvironment: 'jsdom',
  testResultsProcessor: 'jest-junit',
  transform: {
    '^.+\\.svelte$': 'svelte-jester',
    '^.+\\.ts$': 'babel-jest',
  },
  moduleFileExtensions: ['js', 'ts', 'svelte'],
}

export default config
