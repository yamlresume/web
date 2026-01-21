import 'react-medium-image-zoom/dist/styles.css'
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
