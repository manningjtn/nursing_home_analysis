{{
    config
    (
        materialized='table'
    )
}}

with rural as
(
    select *
    from {{source('urban_rural', 'CMS_PROVIDER')}}
    WHERE
        URBAN = 'N'
)

select * from rural