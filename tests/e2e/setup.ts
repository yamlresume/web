import { execa } from 'execa'
import { startServer, stopServer } from './server'

beforeAll(async () => {
  // Ensure the production build is up to date before starting the server
  await execa('pnpm', ['build'], {
    cwd: process.cwd(),
    stdio: 'pipe',
  })

  await startServer()
}, 120_000)

afterAll(async () => {
  await stopServer()
}, 10_000)
