create table "waiting_list" (
    "id" uuid not null default gen_random_uuid(),
    "name" character varying not null,
    "email" character varying not null,
    "hospital" character varying not null,
    "role" character varying not null,
    "phone" character varying,
    "comment" text,
    "created_at" timestamp with time zone not null default now(),
    "updated_at" timestamp with time zone not null default now()
);

CREATE UNIQUE INDEX waiting_list_pkey ON waiting_list USING btree (id);
alter table "waiting_list" add constraint "waiting_list_pkey" PRIMARY KEY using index "waiting_list_pkey";
alter table "waiting_list" enable row level security;
