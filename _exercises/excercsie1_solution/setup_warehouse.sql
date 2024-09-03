
use role sysadmin;

create warehouse if not exists marketing_wh
with
warehouse_size = "X-small"
auto_suspend = 60
auto_resume = true
initially_suspended = true
comment = "used to intreact with mrketing database";

