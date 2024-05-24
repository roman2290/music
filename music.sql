CREATE TABLE if not exists Musical_genre (
	Musical_genreid SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE if not exists List_performers (
	List_performersid SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE if not exists Musical_genreList_performers (
	Musical_id INTEGER REFERENCES Musical_genre(Musical_genreid),
	List_performersid INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (Musical_id, List_performersid)
);

CREATE TABLE if not exists Listalbum (
	Listalbum_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT NULL
);

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