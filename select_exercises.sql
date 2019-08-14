USE codeup_test_db;
SELECT 'All albums from Pink Floyd' AS 'Caption';
SELECT name FROM albums
    WHERE artist = 'Pink Floyd';
SELECT 'Year Sgt. Pepper\'s Lonely Hearts Club Band was released' AS 'Caption';
SELECT release_date FROM albums
    WHERE album = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'Genre of Nevermind' AS 'Caption';
SELECT genre FROM albums
    WHERE name = 'Nevermind';
SELECT 'Albums released in the 90s' AS 'Caption';
SELECT name FROM albums
    WHERE release_date BETWEEN '1990' AND '2000';
SELECT 'Albums released in the 90s' AS 'Caption';
SELECT name FROM albums
    WHERE sales < '20';
SELECT 'Albums released in the 90s' AS 'Caption';
SELECT name FROM albums
    WHERE genre = 'Rock';