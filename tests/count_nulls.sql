{% test count_nulls(model, column_name, dat_column) %}

select
    {{ column_name }}
from {{ model }}
where {{ dat_column }} = to_date(dateadd(day, -1, '{{ var("end_timestamp") }}'))
    and {{ column_name }} is null

{% endtest %}