{{
   config(
      materialized='view'
   )

}}


with src_hosts as (
    select * from {{ref('src_hosts')}}
)

select 
host_id,
created_at,
updated_at,
is_superhost,
NVL(host_name,'Anonymos') AS host_name
from src_hosts