import { execSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'

const YAMLRESUME_ROOT = path.resolve(import.meta.dirname, '../../yamlresume')
const WEB_PUBLIC_ROOT = path.resolve(import.meta.dirname, '../public/developer')

const PACKAGES = [
  'ai',
  'cli',
  'core',
  'create-yamlresume',
  'json2yamlresume',
  'node',
  'playground',
  'samples',
]

function main() {
  console.log('Generating TypeDocs...')
  try {
    execSync('pnpm typedoc', { cwd: YAMLRESUME_ROOT, stdio: 'inherit' })
  } catch (error) {
    console.error('Failed to generate TypeDocs:', error)
    process.exit(1)
  }

  // Ensure destination directory exists
  if (!fs.existsSync(WEB_PUBLIC_ROOT)) {
    fs.mkdirSync(WEB_PUBLIC_ROOT, { recursive: true })
  }

  PACKAGES.forEach((pkgName) => {
    const srcDir = path.join(YAMLRESUME_ROOT, 'packages', pkgName, 'docs')
    const destDir = path.join(WEB_PUBLIC_ROOT, pkgName)

    console.log(`Copying ${pkgName} docs to ${destDir}...`)

    if (fs.existsSync(destDir)) {
      fs.rmSync(destDir, { recursive: true, force: true })
    }

    // Ensure parent dir exists (it is WEB_PUBLIC_ROOT)

    if (fs.existsSync(srcDir)) {
      fs.cpSync(srcDir, destDir, { recursive: true })
    } else {
      console.warn(`Warning: Source directory not found: ${srcDir}`)
    }
  })

  console.log('Done!')
}

main()
