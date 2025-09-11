import 'react-medium-image-zoom/dist/styles.css'
import {
  DockerDemoSection,
  FaqSection,
  FeaturesSection,
  HeroSection,
  NewsChannel,
  TypographyBackground,
} from './components'

export default function HomePage() {
  return (
    <main>
      <NewsChannel />
      <TypographyBackground />
      <div className="space-y-20 items-center mt-24 sm:mt-32 mx-4">
        <HeroSection />
        <FeaturesSection />
        <DockerDemoSection />
        <FaqSection />
      </div>
    </main>
  )
}
