{{ config(
    materialized = 'table'
)}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2021-01-01' as date)",
    end_date="cast(date_add(current_date(), interval 1 week) as date)"
    )
}}