
INSERT INTO Collection (id_collection, name_collection, year_collection) 
VALUES 
	(1, 'Прекрасная пора', '01-01-2018'),
	(2, 'Новые хиты', '01-01-2018'),
	(3, '5 элемент', '01-01-2019'),
	(4, 'Король судьбы', '01-01-2020');

INSERT INTO Track_list (id_track, name_track, time_duration) 
VALUES 
	(1, 'Фортуна', '06:10:00'),
	(2, 'Желтый Ангел', '05:05:00'),
	(3, 'LaVoix', '07:00:00'),
	(4, 'Все цветы', '04:00:00'),
	(5, 'Тебе одной', '02:00:00'),
	(6, 'Русалка', '03:00:00');

INSERT INTO Track_Collection (id_coll, id_track_a)
VALUES
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(2, 1),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 1),
	(3, 2),
	(3, 4),
	(3, 5),
	(3, 6),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 5),
	(4, 6);

INSERT INTO Music_genre (Mgid, name_genre) 
VALUES 
	(1, 'Ария'),
	(2, 'Опера'),
	(3, 'Поп-музыка');

INSERT INTO List_performers (lpid, name_performers) 
VALUES 
(1, 'Владимир Холыстин'),
(2, 'Александр Вертинский'),
(3, 'Анна Нетребко'),
(4, 'Николай Басков');

INSERT INTO  GenerePerformers (music_id, performens_id)
VALUES 
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 3),
	(2, 4),
	(3, 1),
	(3, 2),
	(3, 4);

INSERT INTO List_album (id_L_album, name_album, L_album_year) 
VALUES 
	(1, 'Симфония Холыстина', '01-01-2020'),
	(2, 'Песни о любви', '01-01-2019'),
	(3, 'Opera Arias', '01-01-2018');

INSERT INTO Performers_Album (id_album_a, music_id)
VALUES 
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 3),
	(2, 4),
	(3, 1),
	(3, 2),
	(3, 4);


