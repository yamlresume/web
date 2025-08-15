import {
  defineDocs,
  defineConfig,
  defineCollections,
  frontmatterSchema,
} from 'fumadocs-mdx/config'
import { z } from 'zod'

// Define docs for each locale
export const docs = defineDocs({
  dir: 'content/docs',
})

export const docsZhCN = defineDocs({
  dir: 'content/zh-CN/docs',
})

export const docsZhTW = defineDocs({
  dir: 'content/zh-TW/docs',
})

export default defineConfig({
  mdxOptions: {
    // MDX options
  },
  lastModifiedTime: 'none',
})

// Define blog collections for each locale
export const blog = defineCollections({
  type: 'doc',
  dir: 'content/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogZhCN = defineCollections({
  type: 'doc',
  dir: 'content/zh-CN/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogZhTW = defineCollections({
  type: 'doc',
  dir: 'content/zh-TW/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})
