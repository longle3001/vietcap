select * from {{ source('pg',  'customer_info__c' ) }}
union all
select * from {{ ref('broker_info__c') }}
union all
select * from {{ source('pg',  'agency_info__c' ) }}