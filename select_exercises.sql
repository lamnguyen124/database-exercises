USE codeup_test_db;
SELECT 'All albums from Pink Floyd' AS '';
SELECT name FROM albums
    WHERE artist = 'Pink Floyd';
SELECT 'Year Sgt. Pepper\'s Lonely Hearts Club Band was released' AS '';
SELECT release_date FROM albums
    WHERE album = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'Genre of Nevermind' AS '';
SELECT genre FROM albums
    WHERE name = 'Nevermind';
SELECT 'Albums released in the 90s' AS '';
SELECT * FROM albums
    WHERE release_date BETWEEN 1990 AND 2000;
SELECT 'Albums released in the 90s' AS '';
SELECT name FROM albums
    WHERE sales < 20;
SELECT 'Albums released in the 90s' AS '';
SELECT name FROM albums
    WHERE genre = 'Rock';