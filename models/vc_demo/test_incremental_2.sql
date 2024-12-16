{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='id' 
) }}


select *,
       'long le' as creaeted_by
from {{ source('pg',  'test_incremental' ) }}
{% if is_incremental() %}
    WHERE created_at > (SELECT MAX(created_at) FROM {{ this }})
{% endif %}