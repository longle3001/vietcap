{{
    config(
        materialized='table',
        indexes=[
            {'columns': ['username'], 'type': 'hash'},
            {'columns': ['username', 'email'], 'unique': True},
        ]
    )
}}

select *,
       'long le' as creaeted_by
from {{ ref( 'dbt_users_2' ) }}
