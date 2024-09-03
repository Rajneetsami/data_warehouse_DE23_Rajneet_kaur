
use role job_ads_dlt_role;

use database job_ads; 

show schemas;

show tables in schema staging;

desc table staging.data_field_job_ads;

use warehouse dev_wh;

select
headline, EMPLOYER__WORKPLACE from staging.data_field_job_ads;

select * from data_field_job_ads;