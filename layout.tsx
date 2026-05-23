import './globals.css'
import Link from 'next/link'

export const metadata = {
  title: 'VermogenTracker',
  description: 'Houd je volledige vermogen gedetailleerd bij.'
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="nl">
      <body>
        <div className="layout">
          <aside className="sidebar">
            <h1>VermogenTracker</h1>
            <Link href="/dashboard">Dashboard</Link>
            <Link href="/assets">Bezittingen</Link>
            <Link href="/liabilities">Schulden</Link>
            <Link href="/login">Login</Link>
          </aside>
          <main className="main">{children}</main>
        </div>
      </body>
    </html>
  )
}
