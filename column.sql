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
ALTER TABLE products
MODIFY COLUMN marks int
AFTER fname

-- move column to first
ALTER TABLE products
MODIFY COLUMN marks int
FIRST

-- delete column
ALTER TABLE products
DROP COLUMN lname

-- default value
-- creating new
create table char(
    id int unique,
    fname varchar(40) NOT NULL,
    power int DEFAULT 0
);

-- Existing column
-- It is very helpful for datetime
ALTER TABLE char
modify COLUMN date1 date DEFAULT CURRENT_DATE();

-- His alternative
ALTER TABLE char
ALTER power SET DEFAULT 0;