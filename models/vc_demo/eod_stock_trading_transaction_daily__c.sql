select *
from {{ source('pg',  'market_stock_data__c' ) }}
union all
select *
from {{ source('pg',  'customer_info__c' ) }}