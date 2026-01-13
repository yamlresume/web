'use client'

import { useCallback, useEffect, useRef } from 'react'

export function TypographyBackground() {
  const canvasRef = useRef<HTMLCanvasElement>(null)

  const drawTypographyComparisons = useCallback(
    (ctx: CanvasRenderingContext2D, canvas: HTMLCanvasElement) => {
      // Draw font comparison examples (serif vs sans-serif vs monospace)
      const comparisonCount = 4
      const comparisonTerms = ['Typography', 'Resume', 'YAML', 'Layout']

      for (let i = 0; i < comparisonCount; i++) {
        // Position each comparison in a different corner
        let x: number
        let y: number

        if (i === 0) {
          // top-left
          x = 50 + Math.random() * 150
          y = 50 + Math.random() * 150
        } else if (i === 1) {
          // top-right
          x = canvas.width - 450 + Math.random() * 150
          y = 50 + Math.random() * 150
        } else if (i === 2) {
          // bottom-left
          x = 50 + Math.random() * 150
          y = canvas.height - 300 + Math.random() * 150
        } else {
          // bottom-right
          x = canvas.width - 450 + Math.random() * 150
          y = canvas.height - 300 + Math.random() * 150
        }
        const fontSize = 18 + Math.floor(Math.random() * 10) // 18-28px
        const term = comparisonTerms[i % comparisonTerms.length]

        // Draw serif version
        ctx.font = `${fontSize}px serif`
        ctx.fillText(term, x, y)
        ctx.font = '10px sans-serif'
        ctx.fillText('serif', x, y + 15)

        // Draw sans-serif version
        ctx.font = `${fontSize}px sans-serif`
        ctx.fillText(term, x, y + 40)
        ctx.font = '10px sans-serif'
        ctx.fillText('sans-serif', x, y + 55)

        // Draw monospace version
        ctx.font = `${fontSize}px monospace`
        ctx.fillText(term, x, y + 80)
        ctx.font = '10px sans-serif'
        ctx.fillText('monospace', x, y + 95)
      }
    },
    []
  )

  const drawCJKSamples = useCallback(
    (ctx: CanvasRenderingContext2D, canvas: HTMLCanvasElement) => {
      // Draw CJK typography samples
      const cjkSamples = [
        { text: '中文排版', lang: 'Chinese' },
        { text: '日本語組版', lang: 'Japanese' },
        { text: '한글 타이포그래피', lang: 'Korean' },
      ]

      for (let i = 0; i < cjkSamples.length; i++) {
        // Position each CJK sample in a different area
        let x: number
        let y: number

        if (i === 0) {
          // left side
          x = 50 + Math.random() * 200
          y = canvas.height / 2 - 100 + Math.random() * 200
        } else if (i === 1) {
          // right side
          x = canvas.width - 250 - Math.random() * 200
          y = canvas.height / 2 - 100 + Math.random() * 200
        } else {
          // center top
          x = canvas.width / 2 - 100 + Math.random() * 200
          y = 50 + Math.random() * 150
        }
        const fontSize = 20 + Math.floor(Math.random() * 12) // 20-32px

        ctx.font = `${fontSize}px sans-serif`
        ctx.fillText(cjkSamples[i].text, x, y)

        ctx.font = '10px sans-serif'
        ctx.fillText(cjkSamples[i].lang, x, y + 15)
      }
    },
    []
  )

  const drawLigatures = useCallback(
    (ctx: CanvasRenderingContext2D, canvas: HTMLCanvasElement) => {
      // Draw ligature examples (like in image 5)
      const ligaturePairs = [
        { before: 'fi', after: 'fi' },
        { before: 'fl', after: 'fl' },
        { before: 'ff', after: 'ff' },
        { before: 'ffi', after: 'ffi' },
        { before: 'ffl', after: 'ffl' },
        { before: 'st', after: 'st' },
        { before: 'ct', after: 'ct' },
      ]

      // Position for the ligature examples - place in bottom center
      const x = canvas.width / 2 - 150 + Math.random() * 100
      const y = canvas.height - 250 + Math.random() * 100
      const fontSize = 24

      ctx.font = '10px sans-serif'
      ctx.fillText('Ligature Examples:', x, y - 20)

      for (let i = 0; i < Math.min(4, ligaturePairs.length); i++) {
        const pair = ligaturePairs[i]
        const yPos = y + i * 30

        ctx.font = `${fontSize}px serif`
        ctx.fillText(pair.before, x, yPos)

        // Arrow
        ctx.beginPath()
        ctx.moveTo(x + 50, yPos - fontSize / 2)
        ctx.lineTo(x + 80, yPos - fontSize / 2)
        ctx.stroke()
        ctx.beginPath()
        ctx.moveTo(x + 80, yPos - fontSize / 2 - 5)
        ctx.lineTo(x + 80, yPos - fontSize / 2 + 5)
        ctx.lineTo(x + 85, yPos - fontSize / 2)
        ctx.closePath()
        ctx.fill()

        ctx.font = `${fontSize}px serif`
        ctx.fillText(pair.after, x + 100, yPos)
      }
    },
    []
  )

  const drawDashExamples = useCallback(
    (ctx: CanvasRenderingContext2D, canvas: HTMLCanvasElement) => {
      // Draw dash examples
      const dashExamples = [
        { type: 'hyphen', symbol: '-', example: 'well-known' },
        { type: 'en-dash', symbol: '–', example: '1990–2000' },
        { type: 'em-dash', symbol: '—', example: 'typography—the art' },
      ]

      // Position dash examples in top center
      const x = canvas.width / 2 - 150 + Math.random() * 100
      const y = 100 + Math.random() * 100
      const fontSize = 18

      ctx.font = '10px sans-serif'
      ctx.fillText('Dash Examples:', x, y - 20)

      for (let i = 0; i < dashExamples.length; i++) {
        const dash = dashExamples[i]
        const yPos = y + i * 25

        ctx.font = `${fontSize}px serif`
        ctx.fillText(`${dash.symbol} ${dash.example}`, x, yPos)

        ctx.font = '10px sans-serif'
        ctx.fillText(dash.type, x + 200, yPos)
      }
    },
    []
  )

  useEffect(() => {
    const canvas = canvasRef.current
    if (!canvas) return

    const ctx = canvas.getContext('2d')
    if (!ctx) return

    // Set canvas dimensions to match window size
    const resizeCanvas = () => {
      canvas.width = window.innerWidth
      canvas.height = window.innerHeight
      drawBackground()
    }

    // Initial resize
    resizeCanvas()

    // Add resize listener
    window.addEventListener('resize', resizeCanvas)

    function drawBackground() {
      if (!ctx || !canvas) return

      // Clear canvas
      ctx.clearRect(0, 0, canvas.width, canvas.height)

      const strokeColor = 'rgba(255, 255, 255, 0.0375)'
      const fillColor = 'rgba(0, 0, 0, 0.0375)'

      ctx.strokeStyle = strokeColor
      ctx.fillStyle = fillColor
      ctx.lineWidth = 1

      // Draw typography measurements
      drawTypographyMeasurements(ctx, canvas)

      // Draw typography elements
      drawTypographyElements(ctx, canvas)

      // Draw layout rectangles
      drawLayoutRectangles(ctx, canvas)

      // Draw font family samples
      drawFontSamples(ctx, canvas)

      // Draw typography comparisons
      drawTypographyComparisons(ctx, canvas)

      // Draw CJK typography samples
      drawCJKSamples(ctx, canvas)

      // Draw ligature examples
      drawLigatures(ctx, canvas)

      // Draw dash examples
      drawDashExamples(ctx, canvas)
    }

    function drawTypographyMeasurements(
      ctx: CanvasRenderingContext2D,
      canvas: HTMLCanvasElement
    ) {
      // Draw typography measurement diagrams (like in image 3)
      const diagramCount = 5

      // Create an array to track occupied regions
      const occupiedRegions = []

      for (let i = 0; i < diagramCount; i++) {
        // Divide canvas into quadrants to spread elements
        const quadrant = i % 4 // 0: top-left, 1: top-right, 2: bottom-left, 3: bottom-right

        let x: number
        let y: number
        let attempts = 0
        let collision: boolean

        do {
          collision = false

          // Position based on quadrant
          if (quadrant === 0) {
            // top-left
            x = 50 + Math.random() * (canvas.width / 2 - 200)
            y = 50 + Math.random() * (canvas.height / 2 - 100)
          } else if (quadrant === 1) {
            // top-right
            x = canvas.width / 2 + Math.random() * (canvas.width / 2 - 300)
            y = 50 + Math.random() * (canvas.height / 2 - 100)
          } else if (quadrant === 2) {
            // bottom-left
            x = 50 + Math.random() * (canvas.width / 2 - 200)
            y = canvas.height / 2 + Math.random() * (canvas.height / 2 - 150)
          } else {
            // bottom-right
            x = canvas.width / 2 + Math.random() * (canvas.width / 2 - 300)
            y = canvas.height / 2 + Math.random() * (canvas.height / 2 - 150)
          }

          // Check for collisions with existing elements
          const elementWidth = 300
          const elementHeight = 150
          const _newRegion = {
            x,
            y,
            width: elementWidth,
            height: elementHeight,
          }

          // Check if this region overlaps with any existing ones
          for (const region of occupiedRegions) {
            if (
              x < region.x + region.width &&
              x + elementWidth > region.x &&
              y < region.y + region.height &&
              y + elementHeight > region.y
            ) {
              collision = true
              break
            }
          }

          attempts++
        } while (collision && attempts < 10) // Try up to 10 times to find non-colliding position

        // Add this region to occupied list
        occupiedRegions.push({ x, y, width: 300, height: 150 })
        const fontSize = 28 + Math.floor(Math.random() * 16) // 28-44px

        // Draw the word "Typography" with measurement lines
        ctx.font = `${fontSize}px Georgia, serif`
        ctx.fillText('Typography', x, y)

        // Draw measurement lines
        const wordWidth = ctx.measureText('Typography').width
        const capHeight = fontSize * 0.7
        const xHeight = fontSize * 0.5
        const _baseline = 0
        const descenderHeight = fontSize * 0.2
        const ascenderHeight = fontSize * 0.8

        ctx.beginPath()

        // Baseline
        ctx.moveTo(x - 10, y)
        ctx.lineTo(x + wordWidth + 10, y)

        // x-height line
        ctx.moveTo(x - 10, y - xHeight)
        ctx.lineTo(x + wordWidth + 10, y - xHeight)

        // Cap height line
        ctx.moveTo(x - 10, y - capHeight)
        ctx.lineTo(x + wordWidth + 10, y - capHeight)

        // Descender line
        ctx.moveTo(x - 10, y + descenderHeight)
        ctx.lineTo(x + wordWidth + 10, y + descenderHeight)

        // Ascender line
        ctx.moveTo(x - 10, y - ascenderHeight)
        ctx.lineTo(x + wordWidth + 10, y - ascenderHeight)

        ctx.stroke()

        // Add labels for the lines (only for some diagrams)
        if (Math.random() > 0.5) {
          ctx.font = '10px sans-serif'
          ctx.fillText('baseline', x - 60, y + 4)
          ctx.fillText('x-height', x - 60, y - xHeight + 4)
          ctx.fillText('cap height', x - 60, y - capHeight + 4)
          ctx.fillText('descender', x - 60, y + descenderHeight + 4)
          ctx.fillText('ascender', x - 60, y - ascenderHeight + 4)
        }
      }
    }

    function drawTypographyElements(
      ctx: CanvasRenderingContext2D,
      canvas: HTMLCanvasElement
    ) {
      // Draw paragraph indicators
      for (let i = 0; i < 8; i++) {
        // Divide canvas into regions to avoid collisions
        const regionX = i % 4
        const regionY = Math.floor(i / 4)

        const regionWidth = canvas.width / 4
        const regionHeight = canvas.height / 2

        const x = regionX * regionWidth + Math.random() * (regionWidth - 250)
        const y = regionY * regionHeight + Math.random() * (regionHeight - 150)
        const width = 100 + Math.random() * 150

        // Paragraph lines with varying styles
        const lineCount = 3 + Math.floor(Math.random() * 3) // 3-5 lines
        const lineHeight = 12 + Math.floor(Math.random() * 10) // 12-22px

        for (let j = 0; j < lineCount; j++) {
          // Create more varied line widths
          let lineWidth = width
          if (j === lineCount - 1) {
            lineWidth = width * (0.3 + Math.random() * 0.4) // Last line shorter
          } else if (Math.random() > 0.7) {
            lineWidth = width * (0.7 + Math.random() * 0.3) // Some random lines shorter
          }

          const lineThickness = 4 + Math.floor(Math.random() * 6) // 4-10px
          ctx.fillRect(x, y + j * lineHeight, lineWidth, lineThickness)
        }

        // Add paragraph indicators and labels
        if (Math.random() > 0.5) {
          // Paragraph margin indicators
          ctx.beginPath()
          ctx.moveTo(x - 15, y)
          ctx.lineTo(x - 5, y)
          ctx.stroke()

          // Sometimes add a margin label
          if (Math.random() > 0.7) {
            ctx.save()
            ctx.font = '10px sans-serif'
            ctx.fillText('p', x - 20, y + 4)
            ctx.restore()
          }
        }
      }
    }

    function drawLayoutRectangles(
      ctx: CanvasRenderingContext2D,
      canvas: HTMLCanvasElement
    ) {
      // Draw page layout examples with margins
      for (let i = 0; i < 5; i++) {
        const pageWidth = 120 + Math.random() * 80
        const pageHeight = 160 + Math.random() * 100

        // Position in different corners to avoid collisions
        let x: number
        let y: number

        if (i === 0) {
          // top-left
          x = 50 + Math.random() * 100
          y = 50 + Math.random() * 100
        } else if (i === 1) {
          // top-right
          x = canvas.width - pageWidth - 50 - Math.random() * 100
          y = 50 + Math.random() * 100
        } else if (i === 2) {
          // bottom-left
          x = 50 + Math.random() * 100
          y = canvas.height - pageHeight - 50 - Math.random() * 100
        } else if (i === 3) {
          // bottom-right
          x = canvas.width - pageWidth - 50 - Math.random() * 100
          y = canvas.height - pageHeight - 50 - Math.random() * 100
        } else {
          // center
          x = canvas.width / 2 - pageWidth / 2 + Math.random() * 100 - 50
          y = canvas.height / 2 - pageHeight / 2 + Math.random() * 100 - 50
        }

        // Page outline
        ctx.strokeRect(x, y, pageWidth, pageHeight)

        // Margin lines
        const topMargin = 15 + Math.random() * 10
        const rightMargin = 15 + Math.random() * 10
        const bottomMargin = 15 + Math.random() * 10
        const leftMargin = 15 + Math.random() * 10

        ctx.beginPath()
        // Top margin line
        ctx.moveTo(x, y + topMargin)
        ctx.lineTo(x + pageWidth, y + topMargin)

        // Right margin line
        ctx.moveTo(x + pageWidth - rightMargin, y)
        ctx.lineTo(x + pageWidth - rightMargin, y + pageHeight)

        // Bottom margin line
        ctx.moveTo(x, y + pageHeight - bottomMargin)
        ctx.lineTo(x + pageWidth, y + pageHeight - bottomMargin)

        // Left margin line
        ctx.moveTo(x + leftMargin, y)
        ctx.lineTo(x + leftMargin, y + pageHeight)

        ctx.stroke()

        // Add margin labels
        if (Math.random() > 0.5) {
          ctx.font = '8px sans-serif'
          ctx.fillText('top', x + pageWidth / 2, y + topMargin / 2)
          ctx.fillText(
            'bottom',
            x + pageWidth / 2,
            y + pageHeight - bottomMargin / 2
          )
          ctx.save()
          ctx.translate(x + leftMargin / 2, y + pageHeight / 2)
          ctx.rotate(-Math.PI / 2)
          ctx.fillText('left', 0, 0)
          ctx.restore()
          ctx.save()
          ctx.translate(x + pageWidth - rightMargin / 2, y + pageHeight / 2)
          ctx.rotate(Math.PI / 2)
          ctx.fillText('right', 0, 0)
          ctx.restore()
        }

        // Content area with text lines
        const contentX = x + leftMargin
        const contentY = y + topMargin
        const contentWidth = pageWidth - leftMargin - rightMargin
        const contentHeight = pageHeight - topMargin - bottomMargin

        // Draw text lines in content area
        const lineHeight = 6
        const lineCount = Math.floor(contentHeight / (lineHeight * 1.5))

        for (let j = 0; j < lineCount; j++) {
          const lineY = contentY + j * lineHeight * 1.5
          // Vary line lengths
          const lineWidth = contentWidth * (0.7 + Math.random() * 0.3)
          ctx.fillRect(contentX, lineY, lineWidth, 2)
        }
      }
    }

    function drawFontSamples(
      ctx: CanvasRenderingContext2D,
      canvas: HTMLCanvasElement
    ) {
      const fontFamilies = [
        'serif',
        'sans-serif',
        'monospace',
        'Georgia',
        'Helvetica',
        'Arial',
        'Times New Roman',
        'Courier New',
        'Palatino',
        'Garamond',
        'Verdana',
        'Tahoma',
        'Trebuchet MS',
        'Linux Libertine',
      ]
      const fontSizes = [14, 18, 24, 36, 48]
      const typographyTerms = [
        'Aa Bb Cc',
        'Typography',
        'Baseline',
        'Kerning',
        'Leading',
        'x-height',
        'Serif',
        'Sans-serif',
        'Monospace',
        'Ligature',
        'YAML',
        'Resume',
        'CV',
        'JavaScript',
        'TypeScript',
        'PDF',
      ]

      for (let i = 0; i < 15; i++) {
        // Distribute across the canvas in a grid-like pattern to reduce overlaps
        const gridX = i % 5
        const gridY = Math.floor(i / 5)

        const cellWidth = canvas.width / 5
        const cellHeight = canvas.height / 3

        const x = gridX * cellWidth + Math.random() * (cellWidth * 0.8)
        const y = gridY * cellHeight + 50 + Math.random() * (cellHeight * 0.8)
        const fontFamily =
          fontFamilies[Math.floor(Math.random() * fontFamilies.length)]
        const fontSize = fontSizes[Math.floor(Math.random() * fontSizes.length)]
        const term =
          typographyTerms[Math.floor(Math.random() * typographyTerms.length)]

        ctx.font = `${fontSize}px ${fontFamily}`
        ctx.fillText(term, x, y)

        // Add font family label to some samples
        if (Math.random() > 0.6) {
          ctx.font = '10px sans-serif'
          ctx.fillText(fontFamily, x, y + 15)
        }
      }
    }

    // Cleanup
    return () => {
      window.removeEventListener('resize', resizeCanvas)
    }
  }, [
    // Draw CJK typography samples
    drawCJKSamples, // Draw dash examples
    drawDashExamples, // Draw ligature examples
    drawLigatures, // Draw typography comparisons
    drawTypographyComparisons,
  ])

  return (
    <canvas
      ref={canvasRef}
      className="fixed top-0 left-0 w-full h-full -z-10 pointer-events-none dark:invert"
      aria-label="Typography background pattern"
    />
  )
}
