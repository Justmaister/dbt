{% macro limit_data_in_dev(column_name, developer_days_of_data=3) %}
{% if target.name == 'default' %}
where {{ column_name }} >= dateadd('day', - {{ developer_days_of_data }}, current_timestamp)
{% endif %}
{% endmacro %}