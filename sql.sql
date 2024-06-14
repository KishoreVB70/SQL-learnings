-- Create a DATABASE
CREATE DATABASE db;

-- delete a database
DROP DATABASE db;

-- Alterning to read only mode
-- Cannot drop database in read only mode
ALTER DATABASE db READ ONLY = 1;

-- use the database
USE db;

-- creating a table
CREATE TABLE product(
    id int,
    fname varchar(20),
    lname varchar(20),
    owner varchar(20),
    rating varchar(20),
    spoiled date
)

-- rename table
RENAME TABLE product to products


-- add new column to table
ALTER TABLE products
ADD size int
-- rename column
ALTER TABLE products
RENAME COLUMN rating to marks

-- query
SELECT * from products


