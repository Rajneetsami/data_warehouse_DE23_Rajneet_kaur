

create role if not exists movies_dlt_role;

use role securityadmin;

grant role movies_dlt_role to user extract_loader;

grant usage on warehouse dev_wh to role movies_dlt_role;
grant usage on database movies to role movies_dlt_role;
grant usage on schema movies.staging to role movies_dlt_role;
grant create table on schema movies.staging to role movies_dlt_role;
grant insert, update, delete on all tables in schema movies.staging to role movies_dlt_role;
grant insert, update, delete on future tables in schema movies.staging to role movies_dlt_role;

show grants on schema movies.staging;
show future grants in schema movies.staging;

show grants to role movies_dlt_role;

show grants to user extract_loader;

use role useradmin;

create role if not exists movies_reader;

use role securityadmin;

grant usage on warehouse dev_wh to role movies_reader;
grant usage on database movies to role movies_reader;
grant usage on schema movies.staging to role movies_reader;

grant select on all tables in schema movies.staging to role movies_reader;
grant select on future tables in schema movies.staging to role movies_reader;

grant role movies_reader to user RAJNEETKAUR;

show grants to user RAJNEETKAUR;










