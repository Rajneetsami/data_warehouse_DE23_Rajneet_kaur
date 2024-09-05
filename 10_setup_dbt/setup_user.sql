
use role useradmin;



create user if not exists transformer
password = "transformer_password123"
default_warehouse = dev_wh
login_name = "transformer"
default_namespace = 'job_ads.warehouse'
comment = 'dbt user for transforming data'
default_role = 'job_ads_dbt_role';



