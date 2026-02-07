select 'resident_turnover_ratio_to_overall' as pair_name,
corr(turnover_to_beds, CHAIN_AVERAGE_OVERALL_5STAR_RATING) as correlation
from {{ source('big_chain_ratio_correlations', 'BIG_CHAIN_BEDS_TO_NURSE_TURNOVER') }}
where turnover_to_beds is not null
and CHAIN_AVERAGE_OVERALL_5STAR_RATING is not null

union all

select 'resident_turnover_ratio_to_staffing' as pair_name,
corr(turnover_to_beds, CHAIN_AVERAGE_STAFFING_RATING) as correlation
from {{ source('big_chain_ratio_correlations', 'BIG_CHAIN_BEDS_TO_NURSE_TURNOVER') }}
where turnover_to_beds is not null
and CHAIN_AVERAGE_STAFFING_RATING is not null

union all

select 'turnover_ratio_to_health_inspection' as pair_name,
corr(turnover_to_beds, CHAIN_AVERAGE_HEALTH_INSPECTION_RATING) as correlation
from {{ source('big_chain_ratio_correlations', 'BIG_CHAIN_BEDS_TO_NURSE_TURNOVER') }}
where turnover_to_beds is not null
and CHAIN_AVERAGE_HEALTH_INSPECTION_RATING is not null

