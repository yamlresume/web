import 'react-medium-image-zoom/dist/styles.css'
import {
  ComparisonSection,
  FaqSection,
  FeaturesSection,
  HeroSection,
  NewsChannel,
  OnboardingSection,
  StatsSection,
  TestimonialsSection,
  TypographyBackground,
} from './components'

export default function HomePage() {
  return (
    <main>
      <NewsChannel />
      <TypographyBackground />
      <div className="space-y-32 items-center mt-20 mx-4">
        <HeroSection />
        <FeaturesSection />
        <OnboardingSection />
        <ComparisonSection />
        <StatsSection />
        <TestimonialsSection />
        <FaqSection />
      </div>
    </main>
  )
}
