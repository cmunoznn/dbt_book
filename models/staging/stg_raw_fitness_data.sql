
{{ config(alias='stg_raw_data_1') }}
{{ config(materialized='view') }}

select *
from {{ source('fitness_data', 'RAW_FITNESS_DATA') }}
where 1=1
and gender='Male'
