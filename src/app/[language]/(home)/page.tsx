import type { Metadata } from 'next'
import 'react-medium-image-zoom/dist/styles.css'
import {
  defaultLanguage,
  getLanguageAlternates,
  getTranslations,
  type Language,
} from '@/i18n'
import {
  BuyMeACoffeeSection,
  ComparisonSection,
  FaqSection,
  FeaturesSection,
  HeroSection,
  HomeGallerySection,
  NewsChannel,
  OnboardingSection,
  StatsSection,
  TestimonialsSection,
} from './components'
import { TypographyBackground } from './components/common'

export const revalidate = false

export default async function HomePage({
  params,
}: {
  params: Promise<{ language: string }>
}) {
  const { language } = await params

  return (
    <main>
      <NewsChannel />
      <TypographyBackground />
      <div className="fd-container mt-20 space-y-36">
        <HeroSection />
        <FeaturesSection />
        <HomeGallerySection language={language as Language} />
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

  const t = getTranslations(language, 'hero')

  return {
    title: t('title'),
    description: t('description'),
    alternates: {
      canonical: canonicalPath,
      languages: getLanguageAlternates('/'),
    },
  }
}
