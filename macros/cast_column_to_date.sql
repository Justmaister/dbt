{% macro cast_column_to_date(column_name, date_format) %}
    to_date(cast({{ column_name }} as string), '{{ date_format }}')
{% endmacro %}