show databases;
use chinook;
show tables;
desc album;
desc artist;
select * from album;

select al.title,ar.Name,ar.artistid from album as al join artist as ar using(artistid) order by title; 
desc track;
desc album;

select al.albumid,tr.trackid,tr.name,tr.composer from album as al join track as tr using(albumid);


select composer,count(*) as no_of_tracks
from album join track 
using(albumid) 
group by composer 
order by no_of_tracks desc;


select composer,count(*) as no_of_tracks 
from album join track
using(albumid) 
group by composer
having composer is Not Null
order by no_of_tracks desc;