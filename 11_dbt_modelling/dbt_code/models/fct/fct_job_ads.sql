with ja as (select * from {{ ref('src_job_ads') }}),

jd as (select * from {{ref('src_job_details') }}),

e as (select * from {{ref('src_employer')}}),

aa as ( select * from {{ref('src_auxillary_attributes') }})


select 
{{dbt_utils.generate_surrogate_key(['jd.id','jd.headline'])}} as job_details_key,
{{dbt_utils.generate_surrogate_key(['e.id','e.employer_name'])}} as employer_key,
{{dbt_utils.generate_surrogate_key(['aa.id','aa.experience_required', 'aa.driving_license_required'])}} as auxillary_attributes_key,
ja.relevance, 
ja.vacancies, 
ja.application_deadline,

-- for verfying that fk relationship works

e.employer_name,
aa.driving_license_required

from 
ja
left join
jd on ja.id = jd.id
left join
e on ja.id = e.id
left join
aa on e.id = aa.id


