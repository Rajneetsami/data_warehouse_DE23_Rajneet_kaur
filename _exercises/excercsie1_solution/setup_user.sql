use role useradmin;

create user if not exists extract_loader
password = "extract_loader_password123"
default_warehouse = marketing_wh;