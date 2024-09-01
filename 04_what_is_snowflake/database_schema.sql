show databases;

create database if not exists demo_db;

use database demo_db;

show schemas in demo_db;

create schema if not exists demo_db_staging;

create table if not exists customer(
    customer_id int primary key,
    age integer,
    email varchar(50)
);

show tables;

select * from customer;

insert into customer(customer_id, age, email)
values
(1,32,'abc@gmail.com'),
(2,23,'def@gmail.com');

