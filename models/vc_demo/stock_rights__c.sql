select *
from {{ source('pg',  'customer_info__c' ) }}