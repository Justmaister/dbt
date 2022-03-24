{#

{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='snapshots',
      unique_key='id',

      strategy='check',
      check_cols=['price'],
    )
}}

select id, price from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}

#}