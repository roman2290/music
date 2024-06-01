
CREATE TABLE if not exists Musical_genre (
	Musical_genreid SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) NOT NULL
);

CREATE TABLE if not exists List_performers (
	List_performersid SERIAL PRIMARY KEY,
	name_performers VARCHAR(60) NOT NULL
);

CREATE TABLE if not exists Musical_genreList_performers (
	Musical_id INTEGER REFERENCES Musical_genre(Musical_genreid),
	List_id INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (Musical_id, List_id)
);

CREATE TABLE CollectionList_performers (
	collectionid INTEGER REFERENCES Collection(id_collection),
	perforid INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (collectionid, perforid)
);

CREATE TABLE if not exists Listalbum (
	Listalbum_id integer PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	year integere check (year > 2000)
);

CREATE TABLE if not exists List_performersListalbum (
	album_id INTEGER REFERENCES Listalbum(Listalbum_id),
	List_id INTEGER REFERENCES List_performers(List_performersid),
	PRIMARY KEY (album_id, List_id)
);

CREATE TABLE Tracklist (
	id_track SERIAL PRIMARY KEY,
	name_track VARCHAR(40) NOT NULL,
	time_duration time,
	id_collection INTEGER REFERENCES Collection(id_collection),
	Listalbum_id INTEGER REFERENCES Listalbum(Listalbum_id)
);

CREATE TABLE TracklistListalbum (
	albumtrackid INTEGER REFERENCES Listalbum(Listalbum_id),
	trackid INTEGER REFERENCES Tracklist(id_track),
	PRIMARY KEY (albumtrackid, trackid)

);

CREATE TABLE if not exists TracklistCollection (
	track_id INTEGER REFERENCES Tracklist(id_track),
	collection_id INTEGER REFERENCES Collection(id_collection),
	CONSTRAINT pk2 PRIMARY KEY (id_collection, id_track),
	PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE if not exists Collection (
	id_collection SERIAL integer PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT NULL
);

