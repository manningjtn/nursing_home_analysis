{% test beds_not_null(model, column_name) %}

select
    *
from
    {{ model }}
where
    {{ columns_name }} is null

{% endtest %}