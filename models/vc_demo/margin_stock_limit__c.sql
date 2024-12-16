select *
from {{ source('pg',  'market_stock_data__c' ) }}