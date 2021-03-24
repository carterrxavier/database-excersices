#3a. 31 rows in albums db
select id 
from albums;

#3b. 23 rows in albums db
select distinct artist
from albums;


#3c. primary key is "id"
select *
from albums;

#3d. 1967 is the oldest date
select *
from albums 
order by release_date asc
limit 1;

	#2011 is most recent date
select *
from albums 
order by release_date desc
limit 1;


#4a. The dark side if the moon, the wall
select *
from albums
where artist = 'pink floyd';

#4b. 1967
select release_date
from albums 
where name = "sgt. pepper's lonely hearts club band";

#4c. Grunge , Alternative rock
select genre 
from albums 
where name = 'nevermind';

#4d.
select name 
from albums 
where release_date between 1990 and 1999;

#4e
select name ,sales
from albums 
where sales < 20.0;

#4f. 
select name , genre
from albums
where genere ="rock" ; #querying specifically for rock will only return specifically for "rock" .if you want to get other forms of rock as well you should use  LIKE %rock%

select name , genre
from albums
where genre like "%rock%"; #returns all items where rock is included in the genre.





