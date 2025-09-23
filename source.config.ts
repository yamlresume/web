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
  dir: 'content/zh-cn/docs',
})

export const docsZhTW = defineDocs({
  dir: 'content/zh-tw/docs',
})

export const docsFr = defineDocs({
  dir: 'content/fr/docs',
})

export const docsJa = defineDocs({
  dir: 'content/ja/docs',
})

export default defineConfig({
  mdxOptions: {
    // MDX options
  },
  lastModifiedTime: 'git',
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
  dir: 'content/zh-cn/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogZhTW = defineCollections({
  type: 'doc',
  dir: 'content/zh-tw/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogFr = defineCollections({
  type: 'doc',
  dir: 'content/fr/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogJa = defineCollections({
  type: 'doc',
  dir: 'content/ja/blog',
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})
