with stg_job_ads as (select * from {{ source('job_ads', 'stg_data_ads') }})

select 
id,
headline,
description__text as text,
description__text_formatted as formatted_text,
employment_type__label as employment_type,
duration__label as duration,
salary_type__label as salary_type,
scope_of_work__min,
scope_of_work__max,


from stg_job_ads