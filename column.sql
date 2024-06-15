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

-- unique constraint
-- Creating an new table
create table got(
    id int UNIQUE,
    fname varchar(20)    
)

-- Existing column into unique column
-- You won't be able to change a column to unique
-- if it already contains a duplicate value
alter table char
ADD CONSTRAINT UNIQUE(id)

-- NULL constrain
-- While creation
create table got(
    id int NOT NULL
)
-- Existing column
alter table char
modify column id int NOT NULL