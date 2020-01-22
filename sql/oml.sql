INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHash, profileType)
VALUES (UNHEX('52db977cc5534373ac00d2fe52346067'), 'SOMETHING important', 'Something@somthing.some','hashpassword', 'Kids profile');

INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHash, profileType)
VALUES (UNHEX('12bc9296f0a144c38a44091b38903712'),'Something else important', 'some@some.something', 'shashpass', 'Adult Profile');

INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHash, profileType)
VALUES (UNHEX('3120789a70704874b4372869e4622eee'), 'something also important', 'somesome@some.thing', 'passypassword','Cousins Profile');

INSERT INTO movie(movieId, movieTitle, movieCharacters, movieGenre, movieRating, movieDescription)
VALUES (UNHEX('a4bc9296f0a144c38a44091b3890372b'),'This is a Movie Title', 'This is where I will list the Characters', 'Genre here', 'PG', 'This is deleted later in the OML');

INSERT INTO movie(movieId, movieTitle, movieCharacters, movieGenre, movieRating, movieDescription)
VALUES (UNHEX('43219296f0a144c38a44091b38912345'),'This is a Movie Title', 'This is where I will list the Characters', 'educational', 'PG', 'This is referenced in list');

INSERT INTO list(listId, listProfileId, listMovieId)
VALUES (UNHEX('12349296f0a144c38a44091b38901234'), UNHEX('52db977cc5534373ac00d2fe52346067'), UNHEX('43219296f0a144c38a44091b38912345'));

-- DIRECTIONS: Write and execute write an update statement on one of
-- the rows created in the previous step,
-- UPDATE table SET column1 = newValue1, column2 = newValue2, column3 = newValue3, WHERE primaryKey = uuid;
UPDATE profile SET profileType = 'Sisters Profile', profileEmail = 'sisters@e.mail', profileHash = 'thenewpassword'
WHERE profileId = UNHEX('h43c9296f0a144c38a44091b38903345');

-- DIRECTIONS: Write and execute a delete statement on another row
-- created from your insert statements.
-- DELETE FROM table WHERE primayKey = uuid;
DELETE FROM movie WHERE movieId = UNHEX('a4bc9296f0a144c38a44091b3890372b');

-- DIRECTIONS: Write and execute an insert statement on a table
-- with a foreign key from the original table.
-- INSERT INTO row (column1, column,2, column3, column4) VALUES ("value1", "value2", "value3", "value4");
INSERT INTO list (listId, listProfileId, listMovieId)
VALUES (UNHEX('0c47913f71a44c6dbaf3e6497c1995aa'), UNHEX('12bc9296f0a144c38a44091b38903712'), UNHEX('43219296f0a144c38a44091b38912345'));


-- DIRECTIONS: Write and execute a select statement for a row using its primary key as the selector.
-- SELECT column1, column2, column3, column4, from table WHERE condition = true;
SELECT listId, listMovieId from list WHERE listProfileId = UNHEX('43219296f0a144c38a44091b38912345');


-- DIRECTIONS: Write and execute a select statement that incorporates both a where clause and an
-- inner-join on both tables used in this assignment.
-- SELECT tableA.column1, tableA.column2, tableA.column3, tableB.column3 FROM tableA INNER JOIN
-- tableB on tableA.primaryKeyA = tableB.foreignKeyA WHERE tableA.column = true
-- SELECT movie.movieId, movie.movieTitle, movie.movieGenre, list.listMovieID
-- FROM movie INNER JOIN list on list.listMovieId = movie.movieId WHERE movie.movieGenre = 'educational';


-- SELECT COUNT (like.likeTweetId) AS likeTweetID from tweet;