import type * as React from 'react'

export const Logo = (props: React.SVGProps<SVGSVGElement>) => (
  <svg
    width="8000px"
    height="8000px"
    viewBox="0 0 64 64"
    xmlns="http://www.w3.org/2000/svg"
    aria-hidden="true"
    aria-label="YAMLResume Logo"
    role="img"
    preserveAspectRatio="xMidYMid meet"
    {...props}
  >
    <title>{'YAMLResume Logo - Balanced Y with Padding'}</title>
    <circle cx={32} cy={32} r={32} fill="#000000" />
    <path
      d="M 28 52 V 35 L 14 14 L 22 14 L 32 30 L 42 14 L 50 14 L 36 35 V 52 Z"
      fill="#FFFFFF"
    />
  </svg>
)
