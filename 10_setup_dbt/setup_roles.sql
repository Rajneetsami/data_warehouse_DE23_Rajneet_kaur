use role useradmin;

create role if not exists job_ads_dbt_role;

grant role job_ads_dbt_role to user transformer;
grant role job_ads_dbt_role to user RAJNEETKAUR;

