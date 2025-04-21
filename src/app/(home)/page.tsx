import 'react-medium-image-zoom/dist/styles.css'
import {
  FeaturesSection,
  Footer,
  HeroSection,
  ImageSection,
} from './components'

export default function HomePage() {
  return (
    <main>
      <div className="flex flex-col items-center gap-12 mt-24 sm:mt-32 mx-4">
        <HeroSection />
        <ImageSection />
        <FeaturesSection />
      </div>
      <Footer />
    </main>
  )
}
