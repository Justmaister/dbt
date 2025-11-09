{% macro cast_column_to_timestamp(column_name, timestamp_format) %}
    to_timestamp(cast({{ column_name }} as string), '{{ timestamp_format }}')
{% endmacro %}