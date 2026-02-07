{{
    config
    (
        materialized='table'
    )
}}

with urban as
(
    select *
    from {{source('urban_rural', 'CMS_PROVIDER')}}
    WHERE
        URBAN = 'Y'
)

select * from urban