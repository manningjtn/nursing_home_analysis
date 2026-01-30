{{
    config
    (
        materialized='table'
    )
}}

with urban_count as
(
    select
        state,
        count(*) as urban_provider_count
    from
        {{source('urban_rural', 'CMS_PROVIDER' )}}
    where
        URBAN = 'Y'
    group by
        state
),

rural_count as
(
    select
        state,
        count(*) as rural_provider_count
    from
        {{source('urban_rural', 'CMS_PROVIDER' )}}
    where
        URBAN = 'N'
    group by
        state    
)

select 
    a.state,
    a.urban_provider_count,
    b.rural_provider_count,
    (a.urban_provider_count + b.rural_provider_count) as total_providers
from 
    urban_count as a
inner join
    rural_count as b
on
    a.state = b.state
