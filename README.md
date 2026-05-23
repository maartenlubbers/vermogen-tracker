# VermogenTracker

Een Next.js + Supabase starter-app om je vermogen bij te houden.

## Installatie

```bash
npm install
cp .env.example .env.local
npm run dev
```

## Supabase setup

1. Maak een Supabase-project aan.
2. Kopieer je Project URL en anon key naar `.env.local`.
3. Open Supabase SQL Editor.
4. Voer `supabase/schema.sql` uit.
5. Start de app opnieuw.

## Pagina's

- `/dashboard` netto vermogen
- `/assets` bezittingen
- `/liabilities` schulden
- `/login` placeholder voor auth

## Belangrijke vervolgstappen

- Supabase Auth toevoegen
- Row Level Security per gebruiker inschakelen
- Snapshots automatisch opslaan
- Grafieken toevoegen
- CSV/Excel-export toevoegen
