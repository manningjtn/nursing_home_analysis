{% macro correlation(col_a, col_b) %}
with avg_mean as (
	select 
		avg(t.{{col_a}}) as avg_val,
		avg(t.{{col_b}}) as avg_goal
	from {{source("urban_rural", "CMS_PROVIDER")}} as t
),

math_prep as (
	select
		(t.{{col_a}}-avg_val) as val_dist, 
		pow(t.{{col_a}}-avg_val,2) as val_dist_sq, 
		(t.{{col_b}}-avg_goal) as goal_dist, 
		pow(t.{{col_b}}-avg_goal-avg_goal,2) as goal_dist_sq
	from {{source("urban_rural", "CMS_PROVIDER")}} as t, avg_mean a
)

select 
	(
		sum(val_dist*goal_dist)
		/
		(
			SQRT(sum(val_dist_sq))
			*
			SQRT(sum(goal_dist_sq))
		)
	) as val_goal_correl
from math_prep
{% endmacro %}