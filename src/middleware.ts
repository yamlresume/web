import { createI18nMiddleware } from 'fumadocs-core/i18n/middleware'

import { i18nConfig } from '@/i18n'

export default createI18nMiddleware(i18nConfig)

export const config = {
  // Matcher ignoring `/_next/` and `/api/`
  // You may need to adjust it to ignore static assets in `/public` folder
  matcher: [
    '/((?!api|_next/static|_next/image|favicon.ico|robots.txt|sitemap.xml|llms.txt|llms-full.txt|manifest.webmanifest|static|schema.json|schemas|developer).*)',
  ],
}
