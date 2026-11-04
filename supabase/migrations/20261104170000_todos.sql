create table public.todos (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  text text not null check (char_length(text) between 1 and 1000),
  done boolean not null default false,
  created_at timestamptz not null default now()
);

create index todos_user_created_idx on public.todos (user_id, created_at desc);

alter table public.todos enable row level security;

create policy "Kullanici kendi gorevlerini gorur" on public.todos
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Kullanici kendi gorevini ekler" on public.todos
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Kullanici kendi gorevini gunceller" on public.todos
  for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "Kullanici kendi gorevini siler" on public.todos
  for delete to authenticated using ((select auth.uid()) = user_id);
