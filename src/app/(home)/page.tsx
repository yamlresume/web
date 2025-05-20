import 'react-medium-image-zoom/dist/styles.css'
import {
  FaqSection,
  FeaturesSection,
  Footer,
  HeroSection,
  ImageSection,
  TypographyBackground,
} from './components'

export default function HomePage() {
  return (
    <main>
      <TypographyBackground />
      <div className="flex flex-col items-center gap-12 mt-24 sm:mt-32 mx-4">
        <HeroSection />
        <ImageSection />
        <FeaturesSection />
        <FaqSection />
      </div>
    </main>
  )
}
