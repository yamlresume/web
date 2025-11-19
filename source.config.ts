import {
  defineCollections,
  defineConfig,
  defineDocs,
  frontmatterSchema,
} from 'fumadocs-mdx/config'
import { z } from 'zod'

// Define docs for each locale
export const docs = defineDocs({
  dir: 'content/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
})

export const docsZhCN = defineDocs({
  dir: 'content/zh-cn/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
})

export const docsZhTW = defineDocs({
  dir: 'content/zh-tw/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
})

export const docsFr = defineDocs({
  dir: 'content/fr/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
})

export const docsJa = defineDocs({
  dir: 'content/ja/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
})

export const docsEs = defineDocs({
  dir: 'content/es/docs',
  docs: {
    postprocess: {
      includeProcessedMarkdown: true,
    },
  },
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
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogZhCN = defineCollections({
  type: 'doc',
  dir: 'content/zh-cn/blog',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogZhTW = defineCollections({
  type: 'doc',
  dir: 'content/zh-tw/blog',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogFr = defineCollections({
  type: 'doc',
  dir: 'content/fr/blog',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogJa = defineCollections({
  type: 'doc',
  dir: 'content/ja/blog',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})

export const blogEs = defineCollections({
  type: 'doc',
  dir: 'content/es/blog',
  postprocess: {
    includeProcessedMarkdown: true,
  },
  schema: frontmatterSchema.extend({
    author: z.string(),
    date: z.string().date().or(z.date()),
    profile: z.string(),
  }),
})
