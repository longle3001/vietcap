select *
from {{ ref('broker_info__c') }}
union
select *
from {{ source('pg',  'agency_info__c' ) }}