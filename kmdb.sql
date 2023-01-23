DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS cast;

.mode column 

.headers off

CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
movie_title TEXT,
year_made INTEGER,
MPAA_rating TEXT,
studio TEXT
);

.width 21 4 5 20;

INSERT INTO movies (
    "movie_title",
    "year_made",
    "MPAA_rating",
    "studio"
) VALUES (
    "Batman Begins",
    2005,
    "PG-13",
    "Warner Bros."
);

INSERT INTO movies (
    "movie_title",
    "year_made",
    "MPAA_rating",
    "studio"
) VALUES (
    "The Dark Knight",
    2008,
    "PG-13",
    "Warner Bros."
);

INSERT INTO movies (
    "movie_title",
    "year_made",
    "MPAA_rating",
    "studio"
) VALUES (
    "The Dark Knight Rises",
    2012,
    "PG-13",
    "Warner Bros."
);

.print ""
.print "MOVIES"
.print "========"
.print ""

SELECT movies.movie_title, movies.year_made, movies.MPAA_rating, movies.studio 
FROM movies
ORDER BY year_made;

CREATE TABLE cast (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
cast_name TEXT,
character_name TEXT
);

.width 25 22 30;

INSERT INTO cast (title, cast_name, character_name)
SELECT 'Batman Begins', 'Christian Bale', 'Bruce Wayne' UNION
SELECT 'Batman Begins', 'Michael Caine', 'Alfred' UNION
SELECT 'Batman Begins', 'Liam Neeson', 'Ra''s Al Ghul' UNION
SELECT 'Batman Begins', 'Katie Holmes', 'Rachel Dawes' UNION
SELECT 'Batman Begins', 'Gary Oldman', 'Commissioner Gordon' UNION
SELECT 'The Dark Knight', 'Christian Bale', 'Bruce Wayne' UNION
SELECT 'The Dark Knight', 'Heath Ledger', 'Joker' UNION
SELECT 'The Dark Knight', 'Aaron Eckhart', 'Harvey Dent' UNION
SELECT 'The Dark Knight', 'Michael Caine', 'Alfred' UNION
SELECT 'The Dark Knight', 'Maggie Gyllenhaal', 'Rachel Dawes' UNION
SELECT 'The Dark Knight Rises', 'Christian Bale', 'Bruce Wayne' UNION
SELECT 'The Dark Knight Rises', 'Gary Oldman', 'Commissioner Gordon' UNION
SELECT 'The Dark Knight Rises', 'Tom Hardy', 'Bane' UNION
SELECT 'The Dark Knight Rises', 'Joseph Gordon-Levitt', 'John Blake' UNION
SELECT 'The Dark Knight Rises', 'Anne Hathaway', 'Selina Kyle';


.print ""
.print "TOP CAST"
.print "========"
.print ""

SELECT title, cast_name, character_name FROM cast
INNER JOIN movies ON title = movie_title;
