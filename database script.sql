CREATE TABLE console_games (
    game_rank integer,
    game_name varchar(1200),
    platform varchar(1200),
    game_year integer,
    genre varchar(20),
    publisher varchar(1200),
    na_sales float8,
    eu_sales float8,
    jp_sales float8,
    other_sales float8    
);
Copy console_games from 'C:\Users\STELLA\Downloads\P9-ConsoleGames.csv' delimiter ','CSV HEADER;


CREATE TABLE console_dates (
    platform_name char(120),
    first_retail_availability date,
    discontinued date,
    units_sold_mill float8,
    platform_comment varchar(120)    
);

COPY console_dates FROM 'C:\Users\STELLA\Downloads\P9-ConsoleDates.csv' DELIMITER ',' CSV HEADER;
