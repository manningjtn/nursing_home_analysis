{{
    config
        (
            materialized = 'table'
        )
}}


with nurse_turnover_cost as
(
    select
        chain_name,
        rn_turnover,
        avg_total_residents,
        round((((avg_total_residents)*365)*200),0) as estimated_rev_for_medicaid,
        round((turnover - rn_turnover),0)  as cna_turnover,
        round((rn_turnover*61100), 0) as cost_of_rn_replacement,
        round((turnover-rn_turnover)*5000, 0) as cost_of_cna_replacement,
        
    from
        {{source('big_chain_stats', 'BIG_CHAIN_PROVIDER')}}
    group by
        chain_name, rn_turnover, turnover, avg_total_residents
)

select
    *,
    round(cost_of_rn_replacement+cost_of_cna_replacement, 0) total_recuitment_cost, 
    round((total_recuitment_cost*0.2), 0) estimated_savings_by_using
from 
    nurse_turnover_cost
order by
    cost_of_rn_replacement desc