DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies (
    title varchar(200) NOT NULL ,
    description text,
    trailer varchar(200),
    year date,
    runtime smallint
);