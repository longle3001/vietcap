{{
    config(
        materialized='table',
        indexes=[
            {'columns': ['id_unique__c'], 'type': 'hash'}
        ]
    )
}}

select *,
       'long le' as creaeted_by
from {{ source('pg',  'salesforce_data' ) }}
