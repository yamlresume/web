export const siteConfig = {
  name: 'YAMLResume',
  shortName: 'YResume',
  description: [
    'YAMLResume allows people to create and version control resumes',
    'using YAML and generate pixel perfect PDFs',
    'with professional layout and typesetting in a breeze.',
  ].join(' '),
  url: 'https://yamlresume.dev',
  ogImage: 'https://yamlresume.dev/static/assets/images/og.png',

  authors: [
    {
      name: 'Xiao Hanyu',
      url: 'https://x.com/xiaohanyu1988',
    },
  ],
  creator: {
    name: 'Xiao Hanyu',
    twitter: '@xiaohanyu1988',
  },
  keywords: [
    'resume',
    'yaml',
    'pdf',
    'latex',
    'typesetting',
    'cv',
    'curriculum vitae',
    'job application',
  ],
}

export type SiteConfig = typeof siteConfig
