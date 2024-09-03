
use role useradmin;

create role if not exists marketing_dlt_role;

use role securityadmin;

grant usage on warehouse marketing_wh to role marketing_dlt_role;
grant usage on database ifood to role marketing_dlt_role;
grant usage on schema ifood.staging to role marketing_dlt_role;

grant create table on schema ifood.staging to role marketing_dlt_role;
grant insert, update, delete on all tables in schema ifood.staging to role marketing_dlt_role;
grant insert, update, delete on future tables in schema ifood.staging to role marketing_dlt_role;

grant role marketing_dlt_role to user extract_loader;

show grants to role marketing_dlt_role;




