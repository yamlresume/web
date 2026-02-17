import { createMDX } from 'fumadocs-mdx/next';

const withMDX = createMDX();

/** @type {import('next').NextConfig} */
const config = {
  reactStrictMode: true,
  async rewrites() {
    return [
      {
        source: '/llms.txt',
        destination: '/en/llms.txt',
      },
      {
        source: '/llms-full.txt',
        destination: '/en/llms-full.txt',
      },
    ];
  },
};

export default withMDX(config);
