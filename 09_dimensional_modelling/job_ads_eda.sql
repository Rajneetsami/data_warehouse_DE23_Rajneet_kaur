show ROLES;
use role job_ads_dlt_role;

use schema job_ads.staging;

show tables;

desc table data_field_job_ads;

select * from data_field_job_ads;

select relevance, workplace_address__street_address, workplace_address__postcode, publication_date, webpage_url, source_type
from data_field_job_ads
limit 5;

select scope_of_work__max, scope_of_work__min, salary_description, employer__name, salary_type__label, duration__label,logo_url,
employer__url, employer__workplace
from data_field_job_ads;


select distinct[salary_description] as different_salary_description
from data_field_job_ads;

