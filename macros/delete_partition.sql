{% macro delete_partition(schema_name, table_name, column_name, timestamp_format, partition_type='daily') %}
    {# It deletes the specific partition

    Args:
        schema_name: Schema of table to delete partition
        table_name: Table to delete partition
        column_name: Name of the timestamp column from table to filter.
        timestamp_format: Format used by input column.
        partition_type: hourly or daily (default: 'hourly').

     #}

    {% set schema_name = generate_schema_name(schema_name) %}
    {% set filter_name = mng_dbt_utils.incremental_filter(source_column=column_name, target_column=None, timestamp_format=timestamp_format, partition_type=partition_type) %}

    {% if is_incremental() %}
        DELETE FROM {{ schema_name }}.{{ table_name }} where {{ filter_name }}
    {% endif %}

{% endmacro %}