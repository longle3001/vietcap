select *
from {{ source('pg',  'bond_publishers__c' ) }}