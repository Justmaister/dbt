{% macro share_view(database=target.database, schema=target.schema, table, share) %}
    {% set sql %}
        GRANT USAGE ON SCHEMA {{ database }}.{{ schema }} TO SHARE {{ share }};
        GRANT SELECT ON TABLE {{ database }}.{{ schema }}.{{ table }} TO SHARE {{ share }}
    {% endset %}

    {{ log('Granting Share on table ' ~ table ~ ' in schema ' ~ target.schema ~ ' to share ' ~ share, info=True) }}
    {% do run_query(sql) %}
    {{ log('Share granted', info=True) }}

{% endmacro %}
