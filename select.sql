-- It will display NULL values if NULL and empty if doesn't exit

-- query all columns
SELECT * from products;

-- query specific column
SELECT id, fname from products;


-- where clause to get specific rows
-- where must contain only one attribute
SELECT * FROM products
WHERE id = 1

-- find NULL
SELECT * FROM products
where house IS NULL;
-- find not NULL
SELECT * FROM products
where house IS NOT NULL;