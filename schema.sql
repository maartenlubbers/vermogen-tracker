create table assets (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  name text not null,
  category text not null,
  current_value numeric not null default 0,
  purchase_value numeric default 0,
  currency text not null default 'EUR',
  created_at timestamptz default now()
);

create table liabilities (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  name text not null,
  category text not null,
  outstanding_amount numeric not null default 0,
  interest_rate numeric default 0,
  monthly_payment numeric default 0,
  currency text not null default 'EUR',
  created_at timestamptz default now()
);

create table net_worth_snapshots (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  total_assets numeric not null default 0,
  total_liabilities numeric not null default 0,
  net_worth numeric not null default 0,
  snapshot_date date not null default current_date,
  created_at timestamptz default now()
);
