with fct_job_ads as (select * from {{ref('fct_job_ads') }}),

job_details as (select * from {{ref('dim_job_details') }}),
employer as (select * from {{ref('dim_employer') }})

select
jd.headline,
f.vacancies,
jd.salary_type,
f.relevance,
e.employer_name,
e.workplace_city,
jd.formatted_text,
jd.duration,
jd.scope_of_work__min,
jd.scope_of_work__max,
f.application_deadline
from fct_job_ads as f
left join job_details as jd 
on f.job_details_key = jd.job_details_id
left join employer as e 
on f.employer_key = e.employer_id