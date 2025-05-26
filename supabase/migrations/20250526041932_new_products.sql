create table "public"."products" (
    "id" uuid not null default gen_random_uuid(),
    "updated_at" timestamp with time zone not null default now(),
    "name" character varying not null,
    "desc" character varying,
    "created_at" timestamp with time zone not null default now(),
    "deleted_at" timestamp with time zone,
    "price" numeric not null default '0'::numeric
);


alter table "public"."products" enable row level security;

CREATE UNIQUE INDEX products_pkey ON public.products USING btree (id);

alter table "public"."products" add constraint "products_pkey" PRIMARY KEY using index "products_pkey";

grant delete on table "public"."products" to "anon";

grant insert on table "public"."products" to "anon";

grant references on table "public"."products" to "anon";

grant select on table "public"."products" to "anon";

grant trigger on table "public"."products" to "anon";

grant truncate on table "public"."products" to "anon";

grant update on table "public"."products" to "anon";

grant delete on table "public"."products" to "authenticated";

grant insert on table "public"."products" to "authenticated";

grant references on table "public"."products" to "authenticated";

grant select on table "public"."products" to "authenticated";

grant trigger on table "public"."products" to "authenticated";

grant truncate on table "public"."products" to "authenticated";

grant update on table "public"."products" to "authenticated";

grant delete on table "public"."products" to "service_role";

grant insert on table "public"."products" to "service_role";

grant references on table "public"."products" to "service_role";

grant select on table "public"."products" to "service_role";

grant trigger on table "public"."products" to "service_role";

grant truncate on table "public"."products" to "service_role";

grant update on table "public"."products" to "service_role";


