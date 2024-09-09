with stg_job_ads as (select * from {{ source('job_ads', 'stg_data_ads') }})

select 
id,
headline,
number_of_vacancies as vacancies,
relevance,
application_deadline

from stg_job_ads 