{% macro persist_docs(relation, model, for_relation=true, for_columns=true) -%}
{# Reimplementation of the original macro https://github.com/dbt-labs/dbt-core/blob/719b2026ab847ab887d3638c81a351b0f6f96158/core/dbt/include/global_project/macros/adapters/persist_docs.sql#L21 #}
{# Avoids persisting column descriptions if it is not a full load #}
    {% if not is_incremental() %}
        {{ return(adapter.dispatch('persist_docs', 'dbt')(relation, model, for_relation, for_columns)) }}
    {% endif %}
{% endmacro %}