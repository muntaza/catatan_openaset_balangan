create or replace function public.array_unique(arr anyarray)
returns anyarray as $body$
    select array( select distinct unnest($1) )
$body$ language 'sql';


