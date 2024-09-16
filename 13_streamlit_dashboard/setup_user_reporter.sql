
use role useradmin;

create user if not exists reporter
password = 'reporter_password123'
login_name = 'reporter'
default_warehouse = 'dev_wh'
default_namespace = 'job_ads.marts'  -- database and schema
comment = 'reporter use to make analysis and bi'
default_role = 'job_ads_reporter_role';
