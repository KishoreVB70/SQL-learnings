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