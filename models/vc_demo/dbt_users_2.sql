{{
    config(
        materialized='table',
        indexes=[
            {'columns': ['username'], 'type': 'hash'},
            {'columns': ['username', 'email'], 'unique': True},
        ]
    )
}}

select u.*, 
       ui.address, ui.note, 
       now() as _last_update
from {{ source('pg',  'users_2' ) }} as u
inner join {{ source('pg',  'users_info' ) }} ui on ui.id = u.id