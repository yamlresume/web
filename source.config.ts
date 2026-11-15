import {
  defineCollections,
  defineConfig,
  defineDocs,
  frontmatterSchema,
} from 'fumadocs-mdx/config'
import lastModified from 'fumadocs-mdx/plugins/last-modified'
import { z } from 'zod'

// Shared collection options. Keeping them here means a new locale is one
// `defineDocs` / `defineCollections` call instead of a copy-pasted block.
const docsOptions = {
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
}

const blogOptions = {
  type: 'doc',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
} as const

// Define docs for each locale
export const docs = defineDocs({
  dir: 'content/docs',
  ...docsOptions,
})

export const docsEs = defineDocs({
  dir: 'content/es/docs',
  ...docsOptions,
})

export const docsFr = defineDocs({
  dir: 'content/fr/docs',
  ...docsOptions,
})

export const docsPt = defineDocs({
  dir: 'content/pt/docs',
  ...docsOptions,
})

export const docsJa = defineDocs({
  dir: 'content/ja/docs',
  ...docsOptions,
})

export const docsZhCN = defineDocs({
  dir: 'content/zh-cn/docs',
  ...docsOptions,
})

export const docsZhTW = defineDocs({
  dir: 'content/zh-tw/docs',
  ...docsOptions,
})

export const docsId = defineDocs({
  dir: 'content/id/docs',
  ...docsOptions,
})

export default defineConfig({
  mdxOptions: {
    // MDX options
  },
  plugins: [lastModified()],
})

// Define blog collections for each locale
export const blog = defineCollections({
  dir: 'content/blog',
  ...blogOptions,
})

export const blogEs = defineCollections({
  dir: 'content/es/blog',
  ...blogOptions,
})

export const blogFr = defineCollections({
  dir: 'content/fr/blog',
  ...blogOptions,
})

export const blogPt = defineCollections({
  dir: 'content/pt/blog',
  ...blogOptions,
})

export const blogJa = defineCollections({
  dir: 'content/ja/blog',
  ...blogOptions,
})

export const blogZhCN = defineCollections({
  dir: 'content/zh-cn/blog',
  ...blogOptions,
})

export const blogZhTW = defineCollections({
  dir: 'content/zh-tw/blog',
  ...blogOptions,
})

export const blogId = defineCollections({
  dir: 'content/id/blog',
  ...blogOptions,
})
