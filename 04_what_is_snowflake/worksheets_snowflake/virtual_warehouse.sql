show warehouses;

create warehouse demo_warehouse
with
warehouse_size = 'X-small'
auto_suspend = 300
auto_resume = TRUE
initially_suspended = true
comment = 'demo warehouse through worksheet';

alter warehouse compute_wh
set auto_suspend = 120;

alter warehouse demo_warehouse
set max_cluster_count = 2;

drop warehouse demo_warehouse;