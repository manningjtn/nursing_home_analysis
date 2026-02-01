{% macro correlation(col_a, col_b) %}
with avg_mean as (
select avg(t.{{col_a}}) avg_val,
avg(t.{{col_b}}) avg_goal
from {{source("urban_rural", "CMS_PROVIDER")}} t
),
math_prep as (
select (t.{{col_a}}-a.avg_val) val_dist,
pow(t.{{col_a}}-a.avg_val,2) val_dist_sq,
(t.{{col_b}}-a.avg_goal) goal_dist,
pow(t.{{col_b}}-a.avg_goal,2) goal_dist_sq
from {{source("urban_rural", "CMS_PROVIDER")}} t
cross join avg_mean a
)
select sum(val_dist*goal_dist) /
(sqrt(sum(val_dist_sq)) * sqrt(sum(goal_dist_sq))) as val_goal_correl
from math_prep
{% endmacro %}