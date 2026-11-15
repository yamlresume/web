import { createMDX } from 'fumadocs-mdx/next'

const withMDX = createMDX()

/** @type {import('next').NextConfig} */
const config = {
  reactStrictMode: true,
  output: 'standalone',
  async redirects() {
    return [
      {
        source: '/:locale(en|es|fr|pt|ja|zh-cn|zh-tw|id)/gallery',
        destination: '/gallery',
        permanent: true,
      },
      {
        source: '/:locale(en|es|fr|pt|ja|zh-cn|zh-tw|id)/gallery/:path*',
        destination: '/gallery/:path*',
        permanent: true,
      },
      {
        source: '/en',
        destination: '/',
        permanent: true,
      },
      {
        source: '/en/:path*',
        destination: '/:path*',
        permanent: true,
      },
    ]
  },
  async rewrites() {
    return [
      {
        source: '/:language/docs.mdx',
        destination: '/:language/llms.mdx/docs',
      },
      {
        source: '/:language/docs/:slug*.mdx',
        destination: '/:language/llms.mdx/docs/:slug*',
      },
    ]
  },
}

export default withMDX(config)
