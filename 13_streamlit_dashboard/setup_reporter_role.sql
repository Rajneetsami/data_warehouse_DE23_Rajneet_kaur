use role useradmin;

create role job_ads_reporter_role;

use role securityadmin;

grant usage on warehouse dev_wh to role job_ads_reporter_role;
grant usage on database job_ads to role job_ads_reporter_role;
grant usage on schema job_ads.marts to role job_ads_reporter_role;

grant select on all tables in schema job_ads.marts to role job_ads_reporter_role;
grant select on all views in schema job_ads.marts to role job_ads_reporter_role;
grant select on future tables in schema job_ads.marts to role job_ads_reporter_role;
grant select on future views in schema job_ads.marts to role job_ads_reporter_role;

grant role job_ads_reporter_role to user reporter;
grant role job_ads_reporter_role to user RAJNEETKAUR;

use role job_ads_reporter_role;

show  grants to role job_ads_reporter_role;


use warehouse dev_wh;

select * from job_ads.marts.mart_jobs_listing;