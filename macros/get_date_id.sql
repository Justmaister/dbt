{% macro cast_date_to_int(column_name) %}

  to_number(to_char({{ column_name }}::date,'yyyymmdd'),'99999999')

{% endmacro %}
