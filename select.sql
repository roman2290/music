SELECT name_track, MAX(time_duration) 
FROM Tracklist
WHERE time_duration = (select MAX(time_duration) FROM Tracklist)
GROUP BY name_track


SELECT name_collection, collection_year 
FROM Collection
WHERE collection_year between '2018' and '2020'

SELECT name_performers
FROM List_performers
WHERE name_performers NOT LIKE '% %'

SELECT name_track
FROM Tracklist
WHERE name_track LIKE '%my%'

SELECT name_genre, COUNT(name_genre)
FROM List_performers s
JOIN Musical_genre a ON a.Musical_genreid = s.List_performersid 
group by name_genre

SELECT name_collection, COUNT(name_track)
FROM Collection s
JOIN Tracklist a ON s.id_collection = a.id_track 
group by name_collection


SELECT name_album, name_performers
FROM List_performers s
JOIN Listalbum  a ON a.Listalbum_id = s.List_performersid
where year != '2020'
group by name_album, name_performers


SELECT name_collection, name_performers
FROM List_performers s
JOIN Collection a ON a.id_collection = s.List_performersid
where name_performers = 'Анна Нетребко'
group by name_collection, name_performers


SELECT name_album, AVG(time_duration) 
FROM Listalbum a
JOIN Tracklist s ON a.Listalbum_id = s.id_track
GROUP BY name_album