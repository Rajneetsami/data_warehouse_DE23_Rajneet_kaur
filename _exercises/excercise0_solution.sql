show warehouses;

show databases;

use database google_keywords_search_dataset__discover_all_searches_on_google;

show schemas;

use schema datafeeds;


show schemas;

desc table google_keywords;

select count(*) as number_of_rows from google_keywords;

select count(keyword) as number_of_keyword, keyword from google_keywords
group by keyword
order by number_of_keyword desc limit 10;

select * from google_keywords limit 10;

select count(platform) as number_of_platform, platform
from google_keywords
group by platform;

SELECT platform, COUNT(DISTINCT calibrated_users) AS user_count
FROM google_keywords
GROUP BY platform;

select count(keyword) as number_of_keyword, keyword  
from google_keywords
where country = 752
group by keyword
order by number_of_keyword desc limit 20;

SELECT MIN(date) AS first_search_date, MAX(date) AS latest_search_date
FROM google_keywords;


select *
from google_keywords
where keyword = 'Spotify';





