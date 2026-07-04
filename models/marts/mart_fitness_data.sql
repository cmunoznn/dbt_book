{{ config(materialized='view', alias='vw_fitness_data') }}

select
 --   *
diet_type, max(age) as max_age, {{ multiply_float('min(age)') }} as min_age
from {{ ref('stg_raw_fitness_data') }}
where 1=1
group by diet_type
