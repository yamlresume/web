/**
 * A open graph generator powered by next/og
 *
 * @see https://vercel.com/docs/og-image-generation
 */
export function OpenGraph({ title }: { title?: string }) {
  return (
    <div
      style={{
        height: '100%',
        width: '100%',
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'flex-start',
        justifyContent: 'space-around',
        background: 'linear-gradient(to bottom right, #121212, #2e2e2e)',
        padding: '48px 64px',
      }}
    >
      {/* Background Pattern */}
      <div
        style={{
          position: 'absolute',
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          backgroundImage:
            'radial-gradient(circle at 4px 8px, rgba(255, 255, 255, 0.8) 24px, transparent 1)',
          backgroundSize: '36px 36px',
          opacity: 0.5,
        }}
      />
      <div
        style={{
          display: 'flex',
          alignItems: 'center',
          gap: '8px',
        }}
      >
        <svg
          width="48"
          height="48"
          viewBox="0 0 64 64"
          xmlns="http://www.w3.org/2000/svg"
          aria-hidden="true"
          role="img"
        >
          <circle cx="32" cy="32" r="32" fill="#000000" />
          <path
            d="M 28 52 V 35 L 14 14 L 22 14 L 32 30 L 42 14 L 50 14 L 36 35 V 52 Z"
            fill="#eaeaea"
          />
        </svg>
        <h1
          style={{
            fontSize: '36px',
            fontWeight: '900',
            color: '#eaeaea',
            opacity: 0.95,
            margin: '0',
            textShadow: '0 2px 4px rgba(0,0,0,0.3)',
          }}
        >
          YAMLResume
        </h1>
      </div>
      <p
        style={{
          alignSelf: 'center',
          color: '#ebebeb',
          fontSize: '64px',
          fontWeight: '800',
          textAlign: 'center',
        }}
      >
        {title || 'Resumes as Code in YAML'}
      </p>
      <p />
    </div>
  )
}
