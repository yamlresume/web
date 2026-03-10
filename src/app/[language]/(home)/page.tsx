import type { Metadata } from 'next'
import 'react-medium-image-zoom/dist/styles.css'
import { defaultLanguage, languages } from '@/i18n'
import {
  BuyMeACoffeeSection,
  ComparisonSection,
  FaqSection,
  FeaturesSection,
  HeroSection,
  NewsChannel,
  OnboardingSection,
  StatsSection,
  TestimonialsSection,
} from './components'
import { TypographyBackground } from './components/common'

export const revalidate = false

export default function HomePage() {
  return (
    <main>
      <NewsChannel />
      <TypographyBackground />
      <div className="space-y-36 items-center mt-20 mx-4">
        <HeroSection />
        <FeaturesSection />
        <OnboardingSection />
        <ComparisonSection />
        <StatsSection />
        <TestimonialsSection />
        <FaqSection />
      </div>
      <BuyMeACoffeeSection />
    </main>
  )
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ language: string }>
}): Promise<Metadata> {
  const { language } = await params

  // Build canonical URL
  const canonicalPath = language === defaultLanguage ? '/' : `/${language}`

  // Build hreflang alternates for all languages
  const languagesAlternates: Record<string, string> = {}
  for (const lang of languages) {
    languagesAlternates[lang] = lang === defaultLanguage ? '/' : `/${lang}`
  }

  return {
    alternates: {
      canonical: canonicalPath,
      languages: languagesAlternates,
    },
  }
}
