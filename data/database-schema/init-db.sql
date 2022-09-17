DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies (
    id integer PRIMARY KEY NOT NULL,
    title varchar(200) NOT NULL,
    description text,
    trailer varchar(200),
    year date,
    runtime smallint
);

DROP TABLE IF EXISTS genres CASCADE;
CREATE TABLE genres (
    id integer PRIMARY KEY NOT NULL,
    name varchar(40) NOT NULL
);

DROP TABLE IF EXISTS movie_genres CASCADE;
CREATE TABLE movie_genres (
    id integer PRIMARY KEY NOT NULL,
    movie_id integer,
    genre_id integer
);

ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT fk_show_genres_genre_id FOREIGN KEY (genre_id) REFERENCES genres(id);

ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT fk_show_genres_show_id FOREIGN KEY (movie_id) REFERENCES movies(id);