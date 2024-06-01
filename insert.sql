
INSERT INTO Musical_genre (Musical_genreid, name) VALUES (1, 'Ария');
INSERT INTO Musical_genre (Musical_genreid, name) VALUES (2, 'Опера');
INSERT INTO Musical_genre (Musical_genreid, name) VALUES (3, 'Поп-музыка');

INSERT INTO List_performers (List_performersid, name) VALUES (1, 'Владимир Холыстин');
INSERT INTO List_performers (List_performersid, name) VALUES (2, 'Александр Вертинский');
INSERT INTO List_performers (List_performersid, name) VALUES (3, 'Анна Нетребко');
INSERT INTO List_performers (List_performersid, name) VALUES (4, 'Николай Басков');

INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (1, 'Симфония Холыстина', '2020');
INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (2, 'Песни о любви', '2019');
INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (3, 'Opera Arias', '2018');

INSERT INTO TracklistListalbum (albumtrackid, trackid) VALUES (1, 4);
INSERT INTO TracklistListalbum (albumtrackid, trackid) VALUES (1, 5);
INSERT INTO TracklistListalbum (albumtrackid, trackid) VALUES (3, 6);


INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (1, 'Фортуна', '06:10:00');
INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (2, 'Желтый Ангел', '05:05:00');
INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (3, 'LaVoix', '07:00:00');
INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (4, 'Все цветы', '04:00:00');
INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (5, 'Тебе одной', '02:00:00');
INSERT INTO Tracklist (id_track, name_track, time_duration) VALUES (6, 'Русалка', '03:00:00');

INSERT INTO Collection (id_collection, name_collection, collection_year) VALUES (1, 'Прекрасная пора', '1991');
INSERT INTO Collection (id_collection, name_collection, collection_year) VALUES (2, 'Новые хиты', '1992');
INSERT INTO Collection (id_collection, name_collection, collection_year) VALUES (3, '5 элемент', '2005');
INSERT INTO Collection (id_collection, name_collection, collection_year) VALUES (4, 'Король судьбы', '2006');


