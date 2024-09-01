use role sysadmin;

create database ice_cream_db;

create warehouse dev_wh
with
warehouse_size = 'xsmall'
auto_suspend = 60
auto_resume = true
initially_suspended = true
comment = 'warehouse for development and analysis for databases';

use warehouse dev_wh;

create table falvors(
    falvor_id INT AUTOINCREMENT,
    flavor_name string,
    price decimal(5,2),
    primary key (falvor_id)
);

create table customers(
    customer_id int autoincrement,
    customer_name string,
    email string,
    primary key (customer_id)
);

create table transactions(
    transcation_id int autoincrement,
    customer_id int,
    falvor_id int,
    quantity int,
    transcation_date timestamp,
    primary key (transcation_id),
    foreign key (customer_id) references customers (customer_id),
    foreign key (falvor_id) references falvors(falvor_id)
);