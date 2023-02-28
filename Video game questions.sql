select *
from console_games;

select *
from console_dates;

select distinct platform
from console_games 
where platform is null;

/* Calculate the percentage of global sales made in North America */

select sum(na_sales + eu_sales + jp_sales + other_sales) as total_global_sales,
       sum(na_sales) as total_na_sales,
       (sum(na_sales) / sum(na_sales + eu_sales + jp_sales + other_sales))*100 as na_sales_percentage
from console_games;

/* extract the view of the console game titles ordered by platform name in ascending order
 * and year of release in descending order
 */ 
create view console_game_titles as
select game_name, platform, game_year
from console_games 
order by platform asc, game_year desc;

-- The View
select * from console_game_titles;

/* for each game title extract the first four letters of the publisher's name */

select left(publisher, 4) as publisher_initials, game_name
from console_games;

/* display the console platforrm which were released either just before black friday
 * or just before christmas (in any year)
 */

select distinct platform, first_retail_availability
from console_games
join console_dates 
on console_games.platform = console_dates.platform_name
where (extract(month from first_retail_availability) = 11 and extract (day from first_retail_availability) <=30)
   or (extract(month from first_retail_availability) =12 and extract(day from first_retail_availability) <=25)
group by  platform, first_retail_availability;

select distinct platform_name, first_retail_availability
from console_dates
where (extract(month from first_retail_availability) = 11 and extract (day from first_retail_availability) <=30)
   or (extract(month from first_retail_availability) =12 and extract(day from first_retail_availability) <=25)
group by  platform_name, first_retail_availability;

/* order the platforms by their longevity in ascending order (i.e the platform which was 
 * available for the longest at the bottom)
 */ 

select platform_name, (discontinued - first_retail_availability) as longevity
from console_dates 
order by longevity;


/* Note that if the platform is still available(i.e it has not been discontinued), its "Discontinued" 
 * attribute may be null in the dataset, we can filter out any platforms where the "Discontinued" attribute
 * is null
 */

select platform_name, (discontinued - first_retail_availability) as longevity
from console_dates 
where discontinued is not null
order by longevity;

-- Show the game_name by their different genre

select genre, game_name
from console_games
where genre ilike '%action%';

select genre, game_name
from console_games
where genre ilike '%adventure%';

select genre, game_name
from console_games
where genre ilike '%fighting%';

select genre, game_name
from console_games
where genre ilike '%misc%';

select genre, game_name
from console_games
where genre ilike '%platform%';

select genre, game_name
from console_games
where genre ilike '%puzzle%';

select genre, game_name
from console_games
where genre ilike '%racing%';

select genre, game_name
from console_games
where genre ilike '%role-playing%';

select genre, game_name
from console_games
where genre ilike '%shooter%';

select genre, game_name
from console_games
where genre ilike '%simulation%';

select genre, game_name
from console_games
where genre ilike '%strategy%';

select genre, game_name
from console_games
where genre ilike '%sport%';













