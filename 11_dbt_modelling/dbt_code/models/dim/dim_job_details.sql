with src_job_details as (select * from {{ ref('src_job_details') }})

select 
{{dbt_utils.generate_surrogate_key(['id','headline'])}} as job_details_id,
headline,
text,
formatted_text,
employment_type,
duration,
salary_type,
scope_of_work__min,
scope_of_work__max,

from src_job_details