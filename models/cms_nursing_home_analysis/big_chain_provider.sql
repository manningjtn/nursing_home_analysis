{{
    config
    (
        materialized = 'table'
    )
}}


with big_chain as
(
    select 
        chain_name,
        CHAIN_ID,
        NUMBER_OF_FACILITIES_IN_CHAIN,
        CHAIN_AVERAGE_OVERALL_5STAR_RATING,
        CHAIN_AVERAGE_HEALTH_INSPECTION_RATING,
        CHAIN_AVERAGE_STAFFING_RATING,
        CHAIN_AVERAGE_QM_RATING, 
        sum(NUMBER_OF_CERTIFIED_BEDS) total_beds,
        sum(AVERAGE_NUMBER_OF_RESIDENTS_PER_DAY) avg_total_residents,
        sum(total_nursing_staff_turnover) turnover,
        sum(REGISTERED_NURSE_TURNOVER) rn_turnover,
        avg(reported_rn_staffing_hours_per_resident_per_day) hours
    from 
        {{source('cms_provider', 'PROVIDER_INFO_DEC2025')}}
    where 
        chain_name is not null
        and total_nursing_staff_turnover is not null
    group by 
        chain_name,
        chain_id,
        number_of_facilities_in_chain,
        chain_average_overall_5star_rating,
        chain_average_health_inspection_rating,
        chain_average_staffing_rating,
        chain_average_qm_rating
)

select 
    *
from 
    big_chain
order by 
    turnover desc
limit 
    30

