import createMiddleware from 'next-intl/middleware';
import { locales, defaultLocale } from './i18n/config';

export default createMiddleware({
  locales,
  defaultLocale,
  localePrefix: 'as-needed'
});

export const config = {
  // Match all internationalized pathnames including default locale routes
  matcher: ['/((?!_next|api|.*\\.|favicon.ico|robots.txt|sitemap.xml).*)']
};