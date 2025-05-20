'use client'

import Link from 'next/link'

export function Footer() {
  return (
    <footer className="w-full py-12 border-t border-fd-foreground/10 mt-16">
      <div className="flex justify-center">
        <div className="container mx-4 grow">
          <div className="text-fd-muted-foreground2">
            © 2023–Present,{' '}
            <Link href="https://ppresume.com" target="_blank">
              PPResume
            </Link>
          </div>
        </div>
      </div>
    </footer>
  )
}
