use role useradmin;

create role if not exists parkering_dlt_role;

use role securityadmin;

grant role parkering_dlt_role to user extract_loader;

grant usage on warehouse dev_wh to role parkering_dlt_role;
grant usage on database parkering_db to role parkering_dlt_role;
grant usage on schema parkering_db.staging to role parkering_dlt_role;

grant create table on schema parkering_db.staging to role parkering_dlt_role;

grant insert, update, delete on all tables in schema parkering_db.staging to role parkering_dlt_role;
grant insert, update, delete on future tables in schema parkering_db.staging to role parkering_dlt_role;

show grants on schema parkering_db.staging;
show future grants in schema parkering_db.staging;

show grants to role parkering_dlt_role;

show grants to user extract_loader;

grant role parkering_dlt_role to user RAJNEETKAUR;

