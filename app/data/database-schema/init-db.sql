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


/* ADDING MOVIES */
/*sci-fi*/
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (0,'Stranger To My Android Servant', 'No description yet', 'This is a link', '2031-01-03', 233);

INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (1,'Greed Of Moondust', 'No description yet', 'This is a link', '2031-01-03', 233);

INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (2,'Planet Of Life', 'No description yet', 'This is a link', '2031-01-03', 233);

INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (3,'Commanders Of Eternity', 'No description yet', 'This is a link', '2031-01-03', 233);


/*adventure*/
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (4,'Thieves Of Dawn', 'No description yet', 'This is a link', '2031-01-03', 233);

INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (5,'Humans Without Courage', 'No description yet', 'This is a link', '2031-01-03', 233);

INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (6,'Delaying My Past', 'No description yet', 'This is a link', '2031-01-03', 233);

/*horror*/
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (7,'Neighbors Who Smiles', 'No description yet', 'This is a link', '2031-01-03', 233);
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (8,'Bats Asks Weird Questions', 'No description yet', 'This is a link', '2031-01-03', 233);
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (9,'Bodies At The Museum', 'No description yet', 'This is a link', '2031-01-03', 233);

/*humor*/
INSERT INTO movies (id,title, description, trailer, year, runtime)
    VALUES (10,'Jealous Of The Mayor', 'No description yet', 'This is a link', '2031-01-03', 233);


/* ADDING GENRES */
INSERT INTO genres (id, name)
    VALUES (0,'Sci-fi');

INSERT INTO genres (id, name)
    VALUES (1,'Adventure');

INSERT INTO genres (id, name)
    VALUES (2,'Horror');

INSERT INTO genres (id, name)
    VALUES (3,'Humor');

/* CONNECTING MOVIES WITH GENRES */
INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (0,0,0);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (1,1,0);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (2,2,0);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (3,3,0);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (4,4,1);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (5,5,1);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (6,6,1);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (7,7,2);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (8,8,2);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (9,9,2);

INSERT INTO movie_genres (id, movie_id, genre_id)
    VALUES (10,10,3);