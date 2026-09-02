#!/usr/bin/env node
/**
 * Build static preview assets for all sample resumes provided by
 * @yamlresume/samples.
 *
 * Outputs are written to public/gallery/:
 *   - positions/{id}/{locale}/resume.html
 *   - positions/{id}/{locale}/resume.pdf
 *   - positions/{id}/{locale}/resume.tex
 *   - positions/{id}/{locale}/resume.md
 *   - positions/{id}/{locale}/resume.webp
 *   - templates/html/{template}/resume.{html,webp}
 *   - templates/latex/{template}/resume.{pdf,tex,webp}
 *   - templates/docx/{template}/resume.docx
 *   - manifest.json (metadata for the gallery UI)
 *
 * Builds are skipped when the source YAML hash matches the cached hash and
 * all expected output files exist.
 */

import { execFileSync } from 'node:child_process'
import { createHash } from 'node:crypto'
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { appendResumeLayouts } from '@yamlresume/core'
import { buildResumeFile } from '@yamlresume/node'
import { getSampleResume, listSampleResumes } from '@yamlresume/samples'
import yaml from 'yaml'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const ROOT = path.resolve(__dirname, '..')
const OUTPUT_DIR = path.join(ROOT, 'public', 'gallery')
const HASH_CACHE_PATH = path.join(OUTPUT_DIR, '.hashes.json')
const TEMPLATE_CONFIG_PATH = path.join(
  ROOT,
  'src',
  'config',
  'galleryTemplates.json'
)
const TEMPLATE_OUTPUT_DIR = path.join(OUTPUT_DIR, 'templates')
const THUMBNAIL_DPI = 300
const THUMBNAIL_RENDERER_VERSION = `imagemagick-${THUMBNAIL_DPI}dpi-lossless-webp-v1`

/**
 * Log a message with a prefix.
 *
 * @param {string} message
 */
function log(message) {
  console.log(`[build-gallery] ${message}`)
}

/**
 * Compute a SHA-256 hash of the given YAML source.
 *
 * @param {string} yamlCode
 * @returns {string}
 */
function hashYaml(yamlCode) {
  return createHash('sha256').update(yamlCode).digest('hex')
}

/**
 * Load the cached YAML hashes.
 *
 * @returns {Record<string, string>}
 */
function loadHashCache() {
  if (!fs.existsSync(HASH_CACHE_PATH)) {
    return {}
  }

  try {
    return JSON.parse(fs.readFileSync(HASH_CACHE_PATH, 'utf8'))
  } catch {
    return {}
  }
}

/**
 * Save the cached YAML hashes.
 *
 * @param {Record<string, string>} hashes
 */
function saveHashCache(hashes) {
  fs.writeFileSync(HASH_CACHE_PATH, JSON.stringify(hashes, null, 2))
}

/**
 * Compute the cache hash for a WebP thumbnail.
 *
 * @param {string} sourceHash
 * @returns {string}
 */
function hashThumbnail(sourceHash) {
  return hashYaml(`${sourceHash}\n${THUMBNAIL_RENDERER_VERSION}`)
}

/**
 * Create a lossless 300-DPI WebP from the first PDF page with ImageMagick.
 *
 * The conversion writes to a temporary file so a failure never destroys an
 * existing asset.
 *
 * @param {string} pdfPath
 * @param {string} webpPath
 * @returns {boolean}
 */
function buildThumbnail(pdfPath, webpPath) {
  if (!fs.existsSync(pdfPath)) {
    return false
  }

  const temporaryPath = `${webpPath}.tmp.webp`

  try {
    if (fs.existsSync(temporaryPath)) {
      fs.unlinkSync(temporaryPath)
    }

    execFileSync(
      'magick',
      [
        '-density',
        String(THUMBNAIL_DPI),
        `${pdfPath}[0]`,
        '-background',
        'white',
        '-alpha',
        'remove',
        '-alpha',
        'off',
        '-strip',
        '-define',
        'webp:lossless=true',
        '-define',
        'webp:method=6',
        temporaryPath,
      ],
      { stdio: 'pipe' }
    )
    fs.copyFileSync(temporaryPath, webpPath)
    fs.unlinkSync(temporaryPath)
    return true
  } catch (error) {
    if (fs.existsSync(temporaryPath)) {
      fs.unlinkSync(temporaryPath)
    }
    log(`  ImageMagick thumbnail generation failed: ${error.message}`)
    return false
  }
}

/**
 * Remove the superseded generated PNG after its WebP replacement exists.
 *
 * @param {string} webpPath
 */
function removeLegacyThumbnail(webpPath) {
  if (!fs.existsSync(webpPath)) {
    return
  }

  const legacyPngPath = webpPath.replace(/\.webp$/, '.png')
  if (fs.existsSync(legacyPngPath)) {
    fs.unlinkSync(legacyPngPath)
  }
}

/**
 * Check whether all non-thumbnail outputs exist.
 *
 * @param {string} htmlPath
 * @param {string} docxPath
 * @param {string} pdfPath
 * @param {string} markdownPath
 * @param {string} texPath
 * @returns {boolean}
 */
function outputsExist(htmlPath, docxPath, pdfPath, markdownPath, texPath) {
  return [htmlPath, docxPath, pdfPath, markdownPath, texPath]
    .filter(Boolean)
    .every((filePath) => fs.existsSync(filePath))
}

/**
 * Remove the obsolete top-level asset directory after every nested position
 * asset has been verified.
 *
 * @param {import('@yamlresume/samples').SampleResumeEntry} entry
 */
function removeLegacySampleDirectory(entry) {
  const hasCompleteReplacement = entry.languages.every((locale) => {
    const directory = path.join(OUTPUT_DIR, 'positions', entry.id, locale)
    return ['html', 'docx', 'pdf', 'tex', 'md', 'webp'].every((extension) =>
      fs.existsSync(path.join(directory, `resume.${extension}`))
    )
  })

  if (!hasCompleteReplacement) {
    return
  }

  const legacyDirectory = path.join(OUTPUT_DIR, entry.id)
  if (fs.existsSync(legacyDirectory)) {
    fs.rmSync(legacyDirectory, { recursive: true })
  }
}

/**
 * Build a sample resume with the buildResumeFile API from @yamlresume/node.
 *
 * PDF compilation depends on a local LaTeX engine; if it is unavailable, the
 * build fails after HTML has been generated and thumbnail generation is
 * skipped.
 *
 * @param {string} resumePath
 * @param {string} outputDir
 */
async function buildWithYamlresume(resumePath, outputDir) {
  try {
    await buildResumeFile(resumePath, {
      output: outputDir,
      timeout: 60,
      pdf: true,
    })
  } catch (error) {
    log(`  yamlresume build exited with warnings: ${error.message}`)
  }
}

/**
 * Build all output formats for a single sample resume in a single locale.
 *
 * Skips the build when the source YAML hash has not changed and all expected
 * output files already exist.
 *
 * @param {import('@yamlresume/samples').SampleResumeEntry} entry
 * @param {import('@yamlresume/core').LocaleLanguage} locale
 * @param {Record<string, string>} hashes
 */
async function buildSampleLocale(entry, locale, hashes) {
  const sampleDir = path.join(OUTPUT_DIR, 'positions', entry.id, locale)
  fs.mkdirSync(sampleDir, { recursive: true })

  const yamlCode = getSampleResume(entry.id, locale)
  const yamlHash = hashYaml(yamlCode)
  const cacheKey = `positions/${entry.id}/${locale}`
  const thumbnailCacheKey = `${cacheKey}:thumbnail`
  const thumbnailHash = hashThumbnail(yamlHash)

  const htmlPath = path.join(sampleDir, 'resume.html')
  const docxPath = path.join(sampleDir, 'resume.docx')
  const pdfPath = path.join(sampleDir, 'resume.pdf')
  const markdownPath = path.join(sampleDir, 'resume.md')
  const webpPath = path.join(sampleDir, 'resume.webp')

  const doc = yaml.parseDocument(yamlCode)
  appendResumeLayouts(doc)
  const layouts = doc.get('layouts')?.toJSON() ?? []
  const hasLatexLayout = layouts.some((layout) => layout.engine === 'latex')
  const texPath = hasLatexLayout
    ? path.join(sampleDir, 'resume.tex')
    : undefined

  if (
    hashes[cacheKey] === yamlHash &&
    outputsExist(htmlPath, docxPath, pdfPath, markdownPath, texPath)
  ) {
    if (
      hashes[thumbnailCacheKey] !== thumbnailHash ||
      !fs.existsSync(webpPath)
    ) {
      if (!buildThumbnail(pdfPath, webpPath)) {
        throw new Error(`Failed to build thumbnail for ${cacheKey}`)
      }

      hashes[thumbnailCacheKey] = thumbnailHash
      log(`  ${cacheKey} (thumbnail rebuilt)`)
    } else {
      log(`  ${cacheKey} (up to date)`)
    }
    removeLegacyThumbnail(webpPath)
    return
  }

  log(`  ${cacheKey}`)

  const layoutOrder = ['html', 'docx', 'markdown', 'latex']
  doc.set(
    'layouts',
    [...layouts].sort(
      (left, right) =>
        layoutOrder.indexOf(left.engine) - layoutOrder.indexOf(right.engine)
    )
  )

  const resumePath = path.join(sampleDir, 'resume.yml')
  fs.writeFileSync(resumePath, doc.toString())

  await buildWithYamlresume(resumePath, sampleDir)

  for (const ext of ['.yml', '.aux', '.log', '.out']) {
    const auxiliaryPath = path.join(sampleDir, `resume${ext}`)
    if (fs.existsSync(auxiliaryPath)) {
      fs.unlinkSync(auxiliaryPath)
    }
  }

  if (!fs.existsSync(pdfPath)) {
    throw new Error(`Missing PDF output for ${cacheKey}`)
  }
  if (!buildThumbnail(pdfPath, webpPath)) {
    throw new Error(`Failed to build thumbnail for ${cacheKey}`)
  }

  hashes[thumbnailCacheKey] = thumbnailHash
  removeLegacyThumbnail(webpPath)

  hashes[cacheKey] = yamlHash
}

/**
 * Build the route-specific output for a template showcase.
 *
 * @param {{
 *   id: string
 *   engine: string
 *   template?: string
 *   sampleId: string
 *   sampleLocale: import('@yamlresume/core').LocaleLanguage
 * }} showcase
 * @param {Record<string, string>} hashes
 */
async function buildTemplateShowcase(showcase, hashes) {
  const routeId = showcase.template ?? showcase.id
  const cacheKey = `templates/${showcase.engine}/${routeId}`
  const templateDir = path.join(TEMPLATE_OUTPUT_DIR, showcase.engine, routeId)
  const yamlCode = getSampleResume(showcase.sampleId, showcase.sampleLocale)
  const templateHash = hashYaml(
    `${yamlCode}\n${showcase.engine}:${showcase.template ?? ''}`
  )
  const thumbnailCacheKey = `${cacheKey}:thumbnail`
  const thumbnailHash = hashThumbnail(templateHash)
  const htmlPath = path.join(templateDir, 'resume.html')
  const docxPath = path.join(templateDir, 'resume.docx')
  const pdfPath = path.join(templateDir, 'resume.pdf')
  const webpPath = path.join(templateDir, 'resume.webp')
  const expectedPaths =
    showcase.engine === 'html'
      ? [htmlPath]
      : showcase.engine === 'docx'
        ? [docxPath]
        : [pdfPath, path.join(templateDir, 'resume.tex'), webpPath]

  if (
    hashes[cacheKey] === templateHash &&
    expectedPaths
      .filter((filePath) => filePath !== webpPath)
      .every((filePath) => fs.existsSync(filePath))
  ) {
    if (
      showcase.engine === 'latex' &&
      (hashes[thumbnailCacheKey] !== thumbnailHash || !fs.existsSync(webpPath))
    ) {
      if (!buildThumbnail(pdfPath, webpPath)) {
        throw new Error(`Failed to build thumbnail for ${cacheKey}`)
      }

      hashes[thumbnailCacheKey] = thumbnailHash
      log(`  ${cacheKey} (thumbnail rebuilt)`)
    } else {
      log(`  ${cacheKey} (up to date)`)
    }
    removeLegacyThumbnail(webpPath)
    return
  }

  log(`  ${cacheKey}`)
  fs.mkdirSync(templateDir, { recursive: true })

  const doc = yaml.parseDocument(yamlCode)
  appendResumeLayouts(doc)
  const layouts = doc.get('layouts')?.toJSON() ?? []
  const layout = layouts.find(
    (candidate) => candidate.engine === showcase.engine
  )

  if (!layout) {
    throw new Error(`No ${showcase.engine} layout in ${showcase.sampleId}`)
  }

  doc.set('layouts', [
    {
      ...layout,
      ...(showcase.template ? { template: showcase.template } : {}),
    },
  ])

  const resumePath = path.join(templateDir, 'resume.yml')
  fs.writeFileSync(resumePath, doc.toString())
  await buildWithYamlresume(resumePath, templateDir)

  if (showcase.engine === 'latex') {
    if (!fs.existsSync(pdfPath)) {
      throw new Error(`Missing PDF output for ${cacheKey}`)
    }
    if (!buildThumbnail(pdfPath, webpPath)) {
      throw new Error(`Failed to build thumbnail for ${cacheKey}`)
    }

    hashes[thumbnailCacheKey] = thumbnailHash
  }
  removeLegacyThumbnail(webpPath)

  for (const ext of ['.yml', '.aux', '.log', '.out']) {
    const auxiliaryPath = path.join(templateDir, `resume${ext}`)
    if (fs.existsSync(auxiliaryPath)) {
      fs.unlinkSync(auxiliaryPath)
    }
  }

  if (!expectedPaths.every((filePath) => fs.existsSync(filePath))) {
    throw new Error(`Missing output for ${cacheKey}`)
  }

  hashes[cacheKey] = templateHash
}

/**
 * Main entry point.
 */
async function main() {
  log(`Building gallery assets in ${OUTPUT_DIR}`)
  fs.mkdirSync(OUTPUT_DIR, { recursive: true })

  const entries = listSampleResumes()
  const templates = JSON.parse(fs.readFileSync(TEMPLATE_CONFIG_PATH, 'utf8'))
  const hashes = loadHashCache()
  const manifest = {
    generatedAt: new Date().toISOString(),
    samples: [],
  }

  for (const entry of entries) {
    log(`Building ${entry.id}`)

    for (const locale of entry.languages) {
      try {
        await buildSampleLocale(entry, locale, hashes)
      } catch (error) {
        log(`  Failed ${entry.id}/${locale}: ${error.message}`)
      }
    }

    removeLegacySampleDirectory(entry)

    manifest.samples.push({
      id: entry.id,
      category: entry.category,
      position: entry.position,
      tags: entry.tags,
      languages: entry.languages,
      i18n: entry.i18n,
    })
  }

  log('Building template-specific assets')
  for (const showcase of templates) {
    try {
      await buildTemplateShowcase(showcase, hashes)
    } catch (error) {
      log(`  Failed template ${showcase.id}: ${error.message}`)
    }
  }

  fs.writeFileSync(
    path.join(OUTPUT_DIR, 'manifest.json'),
    JSON.stringify(manifest, null, 2)
  )
  saveHashCache(hashes)

  log(`Done. Wrote manifest for ${manifest.samples.length} samples.`)
}

main().catch((error) => {
  console.error(error)
  process.exit(1)
})
