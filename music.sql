CREATE TABLE if not exists Musical_genre (
	Musical_genreid SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

INSERT INTO Musical_genre (Musical_genreid, name) VALUES (1, 'Ария');
INSERT INTO Musical_genre (Musical_genreid, name) VALUES (2, 'Опера');

CREATE TABLE if not exists List_performers (
	List_performersid SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);


INSERT INTO List_performers (List_performersid, name) VALUES (1, 'Владимир Холыстин');
INSERT INTO List_performers (List_performersid, name) VALUES (2, 'Александр Вертинский');
INSERT INTO List_performers (List_performersid, name) VALUES (3, 'Анна Нетребко');


CREATE TABLE if not exists Musical_genreList_performers (
	Musical_id INTEGER REFERENCES Musical_genre(Musical_genreid),
	List_performersid INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (Musical_id, List_performersid)
);

CREATE TABLE if not exists Listalbum (
	Listalbum_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT null
);

INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (1, 'Симфония Холыстина', '1985');
INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (2, 'Песни о любви', '1995');
INSERT INTO Listalbum (Listalbum_id, name, year) VALUES (3, 'Opera Arias', '1993');


CREATE TABLE if not exists List_performersListalbum (
	album_id INTEGER REFERENCES Listalbum(Listalbum_id),
	List_performersid INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (album_id, List_performersid)
);

CREATE TABLE if not exists Tracklist (
	id_track SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration VARCHAR(60) NOT NULL
);

INSERT INTO Tracklist (id_track, name, duration) VALUES (1, 'Фортуна', '1991');
INSERT INTO Tracklist (id_track, name, duration) VALUES (2, 'Желтый Ангел', '1992');
INSERT INTO Tracklist (id_track, name, duration) VALUES (3, 'LaVoix', '1992');

CREATE TABLE if not exists TracklistCollection (
	track_id INTEGER REFERENCES Tracklist(id_track),
	collection_id INTEGER REFERENCES Collection(id_collection),
	PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE if not exists Collection (
	id_collection SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT NULL
);

INSERT INTO Collection (id_collection, name, collection_year) VALUES (1, 'Прекрасная пора', '1991');
INSERT INTO Collection (id_collection, name, collection_year) VALUES (2, 'Новые хиты', '1992');