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