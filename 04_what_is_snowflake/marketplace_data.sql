show databases;

use database alesco_consumer_database_sample;

show schemas;

use schema public;

show tables;

show views;

select * from consumer_test_data_view limit 10;

DESC view consumer_test_data_view;


select count(*) as number_of_rows from consumer_test_data_view;

select distinct prefix from consumer_test_data_view;

select count(distinct first) as number_unique_name from consumer_test_data_view;

select count(distinct city) as number_unique_city from consumer_test_data_view;

select count(*) as number_unique_city, city 
from consumer_test_data_view
group by city
order by number_unique_city desc;

select count(*) as number_unique_city, city 
from consumer_test_data_view
group by city
having city in('NEW YORK', 'DAYTON', 'APOPKA')
order by number_unique_city desc;

select count(*) as number_unique_city, city, state
from consumer_test_data_view
group by city, state
having city in('NEW YORK', 'DAYTON', 'APOPKA')
order by number_unique_city desc;



