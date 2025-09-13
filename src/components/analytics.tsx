import Script from 'next/script'

export function Analytics() {
  const id = 'plausible-inline-init'

  return (
    <>
      <Script
        defer
        data-domain="yamlresume.dev"
        src="https://plausible.ppresume.com/js/script.hash.outbound-links.js"
      />
      <Script id={id} strategy="afterInteractive">
        {
          'window.plausible = window.plausible || function() { (window.plausible.q = window.plausible.q || []).push(arguments); };'
        }
      </Script>
    </>
  )
}
