{{
    config
    (
        materialized='table'
    )
}}

with beds_turnover as
(
    select
        chain_name,
        CHAIN_ID,
        NUMBER_OF_FACILITIES_IN_CHAIN,
        CHAIN_AVERAGE_OVERALL_5STAR_RATING,
        CHAIN_AVERAGE_HEALTH_INSPECTION_RATING,
        CHAIN_AVERAGE_STAFFING_RATING,
        CHAIN_AVERAGE_QM_RATING, 
        turnover/avg_total_residents as turnover_to_residents,
        turnover/total_beds as turnover_to_beds
    from {{source('big_chain_stats', 'BIG_CHAIN_PROVIDER')}}
  
)

select * from beds_turnover