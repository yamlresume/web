import { createMDX } from 'fumadocs-mdx/next';

const withMDX = createMDX();

/** @type {import('next').NextConfig} */
const config = {
  reactStrictMode: true,
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
    ];
  },
};

export default withMDX(config);
