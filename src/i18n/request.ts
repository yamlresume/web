import {getRequestConfig} from 'next-intl/server'
import {defaultLocale, locales} from './config'
 
export default getRequestConfig(async ({requestLocale}) => {
  let locale = await requestLocale
 
  // Ensure that the incoming locale is valid
  if (!locale || !locales.includes(locale as any)) {
    locale = defaultLocale
  }
 
  return {
    locale,
    messages: (await import(`../../messages/${locale}.json`)).default
  }
})