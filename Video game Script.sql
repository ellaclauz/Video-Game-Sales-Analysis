-- Merge both datasets together

select *
from console_games
join console_dates 
on console_games.platform = console_dates.platform_name;

-- compare the sales performance of different platforms

select 
     platform,
     sum(na_sales) as total_na_sales,
     sum(eu_sales) as total_eu_sales,
     sum(jp_sales) as total_jp_sales,
     sum(other_sales) as total_other_sales,
     units_sold_mill
from console_games 
join console_dates 
on console_games.platform = console_dates.platform_name
group by platform, units_sold_mill;

-- Analyze the relationship between first retail availability and sales

select 
     platform,
     avg(na_sales) as avg_na_sales,
     avg(eu_sales) as avg_eu_sales,
     avg(jp_sales) as avg_jp_sales,
     avg(other_sales) as avg_other_sales,
     first_retail_availability
from console_games 
join console_dates 
on console_games.platform = console_dates.platform_name
group by platform, first_retail_availability;

-- Investigate the impact of publisher and genre sales

select 
   publisher,
   genre,
   sum(na_sales) as total_na_sales,
     sum(eu_sales) as total_eu_sales,
     sum(jp_sales) as total_jp_sales,
     sum(other_sales) as total_other_sales
from console_games 
group by publisher, genre;

-- explore reasons for discontinuation

select 
    platform
    discontinued,
    platform_comment,
     sum(na_sales) as total_na_sales,
     sum(eu_sales) as total_eu_sales,
     sum(jp_sales) as total_jp_sales,
     sum(other_sales) as total_other_sales
from console_games 
join console_dates 
on console_games.platform = console_dates.platform_name
group by platform, discontinued, platform_comment;
    
-- sum of global sales for year 2020

select game_year, sum(na_sales + eu_sales + jp_sales + other_sales) as total_global_sales
from console_games
group by game_year;


-- sum of sales platform for each year
select game_year, platform, sum(na_sales + eu_sales + jp_sales + other_sales) as platform_sales
from console_games
group by game_year, platform;

-- sum of platform sales
select platform, sum(na_sales + eu_sales + jp_sales + other_sales) as total_platform_sales
from console_games
group by platform
order by platform asc;

-- sum of sales for each genre 

select genre, sum(na_sales + eu_sales + jp_sales + other_sales) as genre_sales
from console_games
group by genre;

-- sum of genre sales for each year

select game_year, genre, sum(na_sales + eu_sales + jp_sales + other_sales) as total_genre_sales
from console_games
group by game_year, genre;


-- sum of sales by publisher
select publisher, sum(na_sales + eu_sales + jp_sales + other_sales) as publisher_sales
from console_games
group by publisher;

-- sum of sales of publisher for each year 

select game_year, publisher, sum(na_sales + eu_sales + jp_sales + other_sales)*1000000 as publisher_sales
from console_games
group by game_year, publisher;

-- Create view for publisher sales

create view publishersales as
select game_year, publisher, sum(na_sales + eu_sales + jp_sales + other_sales)*1000000 as publisher_sales
from console_games
group by game_year, publisher;

-- The view

select * from publishersales;


