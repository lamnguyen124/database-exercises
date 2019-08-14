use codeup_test_db;
-- CRUD

-- '(R)ead'
SELECT 'All albums' AS '';

SELECT * FROM albums;

# '(U)pdate'
update albums SET sales = sales * 10;

select * FROM albums;

select "All albums released before 1980" as '';

select * from albums where release_date < 1980;

update albums set release_date = release_date - 100 where release_date < 1980;

select * from albums where release_date < 1980;

select "All albums by Michael Jackson" as '';

select * from albums where artist = 'Michael Jackson';

update albums set artist = "Peter jackson" where artist = 'Michael Jackson';



