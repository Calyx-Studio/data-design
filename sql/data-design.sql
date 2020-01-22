-- The statement below sets the collation of the database to utf8
ALTER DATABASE dgutierrez117 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- this is a comment in SQL (yes, the space is needed!)
-- these statements will drop the tables and re-add them
-- this is akin to reformatting and reinstalling Windows (OS X never needs a reinstall...) ;)
-- never ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever
-- do this on live data!!!!
DROP TABLE IF EXISTS list;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS profile;

-- the CREATE TABLE function is a function that takes tons of arguments to layout the table's schema
CREATE TABLE profile (
	-- this creates the attribute for the primary key
	-- not null means the attribute is required!
	profileId BINARY(16) NOT NULL,
	profileActivationToken CHAR(32),
	profileEmail VARCHAR(128) NOT NULL,
	-- to make something optional, exclude the not null
	profileHash CHAR(97) NOT NULL,
	profileType VARCHAR(18),
	-- to make sure duplicate data cannot exist, create a unique index
	UNIQUE(profileEmail),
	-- this officiates the primary key for the entity
	PRIMARY KEY(profileId)
);

-- create the movie entity
CREATE TABLE movie (
	-- this is for yet another primary key...
	movieId BINARY(16) NOT NULL,
	movieTitle BINARY(42) NOT NULL,
	movieCharacters VARCHAR(90) NOT NULL,
	movieGenre VARCHAR(20) NOT NULL,
	movieRating VARCHAR(3) NOT NULL,
	movieDescription VARCHAR (170) NOT NULL,
-- this officiates the primary key for the entity
	PRIMARY KEY(movieId)
);

-- create the like entity (a weak entity from an m-to-n for profile --> tweet)
CREATE TABLE list (

	listId BINARY(16) NOT NULL,
	-- these are still foreign keys
	listProfileId BINARY(16) NOT NULL,
	listMovieId BINARY(16) NOT NULL,
	-- index the foreign keys
	INDEX(listProfileId),
	INDEX(listMovieId),
	-- create the foreign key relations
	FOREIGN KEY(listProfileId) REFERENCES profile(profileId),
	FOREIGN KEY(listMovieId) REFERENCES movie(movieId),
	-- finally, create a composite foreign key with the two foreign keys
	PRIMARY KEY(listId)
);
