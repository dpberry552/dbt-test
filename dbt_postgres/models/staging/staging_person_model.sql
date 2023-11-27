{{ config(materialized='table') }}

with staging_person_data as (
    select * from {{source('person', 'Person')}}
),

final as (
    select * from staging_person_data
)

select * from final