{{
    config(
        materialized='table',
        indexes=[
            {'columns': ['id_unique__c'], 'type': 'hash'}
        ]
    )
}}

select t1.*,
       t2.note
from {{ ref('salesforce_data_2' ) }} t1
inner join {{ ref('dbt_users_3' ) }} t2 on t1.id_unique__c = t2.id  and t1.email = t2.email
