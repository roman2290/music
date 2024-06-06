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
FROM Music_genre a
JOIN GenerePerformers s ON s.music_id = a.Mgid
GROUP BY name_genre

SELECT name_album, COUNT(name_track)
FROM Track_list s
JOIN List_album a ON s.L_Listalbum_id = a.id_l_album 
WHERE L_album_year >= '01-01-2019' and L_album_year <='01-01-2020'
GROUP BY name_album

SELECT name_album, AVG(time_duration) 
FROM Track_list a
JOIN List_album s ON a.L_Listalbum_id = s.id_L_album
GROUP BY name_album

SELECT name_performers from List_performers
where name_performers not in (select name_performers 
FROM List_performers s
JOIN Performers_Album a ON a.id_album_a = s.lpid
where name_performers != '01-01-2020')

SELECT name_collection, name_performers
FROM collection a 
join track_list s on a.id_collection = s.t_id_collection
join list_album d on s.t_id_collection = d.id_l_album 
join performers_album pa on d.id_l_album = pa.music_id 
join list_performers pa2 on pa.id_album_a = pa2.lpid 
where name_performers like 'Анна Нетребко'
group by name_collection, name_performers
