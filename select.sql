-- It will display NULL values if NULL and empty if doesn't exit

-- query all columns
SELECT * from products;

-- query specific column
SELECT id, fname from products;


-- where clause to get specific rows
-- multiple attributes can be atted to where by AND
SELECT * FROM products
WHERE house_id = 1
    AND kingdom_id = 1
    OR city_id = 1

-- find NULL
SELECT * FROM products
where house IS NULL;
-- find not NULL
SELECT * FROM products
where house IS NOT NULL;


-- Join

-- Shows only common
SELECT * from char INNER JOIN city
ON char.city_id = city.id;
-- Shows all from left, but leavs what not is common from the right
SELECT * from char LEFT JOIN city
ON char.city_id = city.id;
-- Shows all from right, but leavs what not is common from the left
SELECT * from char RIGHT JOIN city
ON char.city_id = city.id;

-- Logical operators

SELECT * from char
WHERE id = 6 AND fname = "jon";
SELECT * from char
WHERE id = 6 OR fname = "jon";
SELECT * from char
WHERE NOT id = 6;
-- between
SELECT * FROM char
WHERE power BETWEEN 50 AND 100;
--On
select * from chc 
where power in (0, 70);


--Wild card characters 

-- % Many characters
SELECT * from char
where fname like "s%"
AND lname like "%n"
-- _ one character
select * from chc 
where fname like "Jo_"
-- combination of both
SELECT * from char
WHERE fname like "_a%"

--order by

-- Ascending order, NULL will come first
-- Descending order, NULL will come last
select * from char
-- if two kingdom are same, the sort them by their id value
order by kingdom_id ASC, id DESC;

-- limit clause

select * from chc
limit 5;
-- using offset
SELECT * from char
LIMIT 5,5;

-- union operator, combine 2 or more statements
-- The column number must be the same between two tables
select id, fname from chc
where id < 3
-- union all is used to display duplicate values also
union 
select id, city  from city
where power > 50
order by fname