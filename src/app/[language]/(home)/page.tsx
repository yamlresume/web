import 'react-medium-image-zoom/dist/styles.css'
import {
  FaqSection,
  FeaturesSection,
  HeroSection,
  NewsChannel,
  OnboardingSection,
  TypographyBackground,
} from './components'

export default function HomePage() {
  return (
    <main>
      <NewsChannel />
      <TypographyBackground />
      <div className="space-y-20 items-center mt-20  mx-4">
        <HeroSection />
        <FeaturesSection />
        <OnboardingSection />
        <FaqSection />
      </div>
    </main>
  )
}
