SELECT name_track, time_duration
FROM Track_list
WHERE time_duration = (select MAX(time_duration) FROM Track_list)

select name_track, time_duration 
from Track_list
where time_duration > '00:03:30'

SELECT name_collection, year_collection 
FROM Collection
WHERE year_collection between '01-01-2018' and '01-01-2020'

SELECT name_performers
FROM List_performers
WHERE name_performers NOT LIKE '% %'

SELECT name_track
FROM Track_list
WHERE name_track LIKE '%my%'

SELECT name_genre, COUNT(name_genre)
FROM List_performers s
JOIN Music_genre a ON s.music_id = a.Mgid
group by name_genre

select COUNT(name_track)
FROM Track_list s
JOIN List_album a ON s.t_id_collection = a.id_l_album 
where L_album_year >= '01-01-2019' and L_album_year <='01-01-2020'
group by name_track

SELECT name_album, AVG(time_duration) 
FROM Track_list a
JOIN List_album s ON a.L_Listalbum_id = s.id_L_album
GROUP BY name_album

SELECT name_performers
FROM List_performers s
JOIN List_album  a ON s.music_id = a.id_L_album
where L_album_year != '01-01-2020'
group by name_performers

SELECT name_collection, name_performers
FROM List_performers s
JOIN Collection a ON s.music_id = a.id_collection
where name_performers = 'Анна Нетребко'
group by name_collection, name_performers