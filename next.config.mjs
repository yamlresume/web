import { createMDX } from 'fumadocs-mdx/next';

const withMDX = createMDX();
const defaultLanguage = 'en';

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
      {
        source: '/docs.mdx',
        destination: `/${defaultLanguage}/llms.mdx/docs`,
      },
      {
        source: '/docs/:slug*.mdx',
        destination: `/${defaultLanguage}/llms.mdx/docs/:slug*`,
      },
    ];
  },
};

export default withMDX(config);
