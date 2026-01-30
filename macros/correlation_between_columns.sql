{% macro correlation(schema, table, col_a, col_b) %}
with
avg_mean as (
	select 
		avg({{col_a}}) as avg_val,
		avg({{col_b}}) as avg_goal
	from {{schema}}.{{table}} t
)
, math_prep as (
	select
		({{col_a}}-avg_val) as val_dist, 
		pow({{col_a}}-avg_val,2) as val_dist_sq, 
		({{col_b}}-avg_goal) as goal_dist, 
		pow({{col_b}}-avg_goal-avg_goal,2) as goal_dist_sq
	from {{schema}}.{{table}} t, avg_mean a
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