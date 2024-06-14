-- query all columns
SELECT * from products;

-- add new column to table
ALTER TABLE products
ADD size int;
-- rename column
ALTER TABLE products
RENAME COLUMN rating to marks;
-- Modify datatype of column
ALTER TABLE products
MODIFY COLUMN marks varchar(5);

-- move columns

-- move column to first

-- delete column

