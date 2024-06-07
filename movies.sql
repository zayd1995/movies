show tables;
select * from movies m ;
select count(*) from movies m ;
SELECT column_name
FROM information_schema.columns
WHERE table_schema =  'datas'
  AND table_name = 'movies';
 
UPDATE movies 
SET Certificate  = NULL
WHERE Certificate  = '';

UPDATE movies 
SET Votes  = NULL
WHERE Votes  = '';

select * from movies m ;

select 
      count(case when `certificate` is null then 1 end) as null_cert,
      count(case when Director  is null then 1 end) as null_derc,
      count(case when `Duration (min)`  is null then 1 end) as null_duration,
      count(case when Genre  is null then 1 end) as null_genre,
      count(case when Rating  is null then 1 end) as null_rating,
      count(case when Metascore  is null then 1 end) as null_meta,
      count(case when `Review Count` is null then 1 end) as null_rev_count,
      count(case when Title  is null then 1 end) as null_title,
      count(case when Votes  is null then 1 end) as null_votes,
      count(case when `Year`  is null then 1 end) as null_year
from movies m ;

create procedure movie ()
begin 
	select * from movies;	
end
;
call movie() ;
select distinct `Year` from movies m 
order by `Year` ;

delete 
from movies 
where `Year` is null ;
 call movie() ;
select distinct `certificate` from movies m ;

update movies 
set Certificate  = 'PG-13'
where Certificate is null;
call movie() ;
;
-- Assign the result of the query to the variable using SET ... SELECT
SET @avg_min = (SELECT AVG(`Duration (min)`) FROM movies WHERE `Duration (min)` IS NOT NULL);

UPDATE movies
SET `Duration (min)` = @avg_min
WHERE `Duration (min)` IS NULL;
call movie() ;

delete from movies 
where `Votes` is null ;

delete from movies 
where `Metascore` is null ;

call movie() ;

select `Year`, count(`Year`)as numb from movies m 
group by `Year` 
order by numb desc ;

call movie() ;

select `Certificate`, count(certificate) as total
from movies m 
group by Certificate 
limit 5;

call movie() ;

select min(`Duration (min)`), max(`Duration (min)`),avg(`Duration (min)`)
from movies m ;

call movie();

select max(`Rating`), min(`rating`)
from movies m ;

call movie() ;

select max(`Votes`), min(`Votes`)
from movies m ;
-- test 
select replace(`Votes`,',','') from movies m ;
--

update movies 
set Votes = replace(`Votes`,',','')
;
update movies 
set `Year`  = replace(`Year`,',','');

select max(`Votes`), min(`Votes`)
from movies m ;

call movie() ;

select `Year`, max(`Votes`) as votes
from movies m 
group by `Year` ;

select `Year`, max(Rating) as Ratingg
from movies m 
group by `Year`;

call movie();

select certificate , max(rating) as rat 
from movies m 
group by Certificate 
order by rat desc;







 
























