-- It will display NULL values if NULL and empty if doesn't exit

-- query all columns
SELECT * from products;

-- query specific column
SELECT id, fname from products;


-- where clause to get specific rows
SELECT * FROM products
WHERE id = 1