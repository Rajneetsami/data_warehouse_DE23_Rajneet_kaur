use role useradmin;

select current_role();

select current_user();
create  role ice_cream_reader comment = 'able to read ice_cream_databse';

create role ice_cream_writer comment = 'able to do crud operations on ice_cream_database';

create role ice_cream_analyst comment = 'able to create views on ice_cream_database';


use role securityadmin;

grant usage on warehouse dev_wh to role ice_cream_reader;
grant usage on database ice_cream_db to role ice_cream_reader;

show grants to role ice_cream_reader;

grant usage on all schemas in database ice_cream_db to role ice_cream_reader;
grant select on all tables in schema ice_cream_db.public to role ice_cream_reader;
grant select on future tables in schema ice_cream_db.public to role ice_cream_reader;

show future grants in schema ice_cream_db.public;

grant role ice_cream_reader to role ice_cream_writer;

show grants to role ice_cream_writer;

grant insert, update, delete on all tables in schema ice_cream_db.public to role ice_cream_writer;
grant insert, update, delete on future tables in schema ice_cream_db.public to role ice_cream_writer;

grant create table on schema ice_cream_db.public to role ice_cream_writer;

show future grants in schema ice_cream_db.public;

use role ice_cream_writer;

grant role ice_cream_writer to user RAJNEETKAUR;

GRANT USAGE ON WAREHOUSE dev_wh TO ROLE ice_cream_analyst;

GRANT USAGE ON DATABASE ice_cream_db TO ROLE ice_cream_analyst;
GRANT USAGE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT SELECT ON ALL VIEWS IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

GRANT CREATE TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT CREATE VIEW ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT CREATE TEMPORARY TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

show grants to role ice_cream_analyst;

GRANT SELECT ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT SELECT ON FUTURE VIEWS IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;
GRANT CREATE TABLE ON FUTURE SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_analyst;
GRANT CREATE VIEW ON FUTURE SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_analyst;
GRANT CREATE TEMPORARY TABLE ON FUTURE SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_analyst;

show future grants to role ice_cream_analyst;

grant role ice_cream_analyst to user RAJNEETKAUR;  






