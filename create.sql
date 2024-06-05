
CREATE table if not exists Music_genre (
	Mgid SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) NOT null
);

CREATE TABLE if not exists List_performers (
	lpid SERIAL PRIMARY KEY,
	name_performers VARCHAR(60) NOT null,
	music_id INTEGER,
	FOREIGN KEY(music_id) REFERENCES Music_genre(Mgid)
); 

CREATE TABLE if not exists GenerePerformers (
	music_id INTEGER REFERENCES Music_genre(Mgid),
	performens_id INTEGER REFERENCES List_performers(lpid),
	CONSTRAINT pk PRIMARY KEY (music_id, performens_id)
);

CREATE TABLE if not exists List_album (
	id_L_album SERIAL PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	L_album_year DATE check (L_album_year > '2000-01-01')
);

CREATE TABLE if not exists Track_list (
	id_track SERIAL PRIMARY KEY,
	name_track VARCHAR(40) NOT NULL,
	time_duration TIME not null check (time_duration < '10:00:00'),
	t_id_collection INTEGER REFERENCES Collection(id_collection),
	L_Listalbum_id INTEGER REFERENCES List_album(id_L_album)
);

CREATE TABLE if not exists Collection (
	id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL,
	year_collection DATE
);

CREATE TABLE if not exists Performers_Album (
	id_album_a INTEGER REFERENCES List_album(id_L_album),
	music_id INTEGER REFERENCES List_performers(lpid),
	PRIMARY KEY (id_album_a, music_id)
);

CREATE TABLE if not exists Track_Collection (
	id_track_a INTEGER REFERENCES Track_list(id_track),
	id_coll INTEGER REFERENCES Collection(id_collection),
	constraint pk_a PRIMARY KEY (id_track_a, id_coll)
);

