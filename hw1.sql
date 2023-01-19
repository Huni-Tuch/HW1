-- HW 1

-- blank slate w/tables

DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS actors;

-- let's create the tables

CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released TEXT,
  rating INTEGER,
  studio_id INTEGER
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  movie_id INTEGER,
  actor_id INTEGER
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

-- Now let us add the data

-- Studios

INSERT INTO studios (
    name
) VALUES (
    "Warner Bros."
)
;
-- Movies

INSERT INTO movies (
    title,
    year_released,
    rating,
    studio_id
) VALUES 
    ("Batman Begins",
    2005,
    "PG-13",
    1
    ),(
    "The Dark Knight",
    2008,
    "PG-13",
    1
    ),(
    "The Dark Knight Rises",
    2012,
    "PG-13",
    1    
    )
;

-- Characters

INSERT INTO characters (
    movie_id,
    actor_id,
    name
) VALUES 
    (1,1,"Bruce Wayne"
    ),(
    1,2,"Alfred"
    ),(
    1,3,"Ra's Al Ghul"
    ),(
    1,4,"Rachel Dawes"
    ),(
    1,5,"Commissioner Gordon"
    ),(
    2,1,"Bruce Wayne"
    ),(
    2,6,"Joker"
    ),(
    2,7,"Harvey Dent"
    ),(
    2,2,"Alfred"
    ),(
    2,8,"Rachel Dawes"
    ),(
    3,1,"Bruce Wayne"
    ),(
    3,5,"Commissioner Gordon"
    ),(
    3,9,"Bane"
    ),(
    3,10,"John Blake"
    ),(
    3,11,"Selina Kyle"
    )
;
    -- Finally, Actors

    INSERT INTO actors (
        name
    ) VALUES (
        "Christian Bale"
        ),(
        "Michael Caine"
        ),(
        "Liam Neeson"
        ),(
        "Katie Holmes"
        ),(
        "Gary Oldman"
        ),(
        "Heath Ledger"
        ),(
        "Aaron Eckhart"
        ),(
        "Maggie Gyllenhaal"
        ),(
        "Tom Hardy"
        ),(
        "Joseph Gordon-Levitt"
        ),(
        "Anne Hathaway"         
        )
    ;

-- Now, let's do the print outs

.print ""
.print "Movies"
.print "======"
.print ""

SELECT movies.title, movies.year_released, movies.rating, studios.name 
FROM movies
INNER JOIN studios ON studios.id = movies.studio_id
;


.print ""
.print "Top Cast"
.print "========"
.print ""

SELECT movies.title, actors.name, characters.name 
FROM movies
INNER JOIN characters ON movies.id=characters.movie_id
INNER JOIN actors ON actors.id=characters.actor_id
;