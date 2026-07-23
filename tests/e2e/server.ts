import { execa } from 'execa'

const PORT = Number(process.env.PORT ?? 3000)
export const BASE_URL = `http://localhost:${PORT}`

let serverProcess: ReturnType<typeof execa> | null = null

function isAlive(pid: number | undefined): boolean {
  if (pid === undefined) return false
  try {
    process.kill(pid, 0)
    return true
  } catch {
    return false
  }
}

export async function startServer(): Promise<void> {
  if (serverProcess) return

  serverProcess = execa('pnpm', ['start'], {
    cwd: process.cwd(),
    env: { ...process.env, PORT: String(PORT) },
    stdio: 'pipe',
    reject: false,
    forceKillAfterDelay: 5_000,
  })

  // Wait for server to be ready
  const start = Date.now()
  const timeout = 60_000

  while (Date.now() - start < timeout) {
    try {
      const res = await fetch(BASE_URL, { method: 'GET' })
      if (res.ok || res.status === 307) {
        return
      }
    } catch {
      // server not ready yet
    }

    if (!isAlive(serverProcess.pid)) {
      const { exitCode, stderr } = await serverProcess
      throw new Error(
        `Server exited early with code ${exitCode}. stderr: ${stderr}`
      )
    }

    await new Promise((resolve) => setTimeout(resolve, 500))
  }

  throw new Error(`Server did not become ready within ${timeout}ms`)
}

export async function stopServer(): Promise<void> {
  if (!serverProcess) return

  serverProcess.kill('SIGTERM')
  await serverProcess.catch(() => {
    // ignore kill errors
  })
  serverProcess = null
}
