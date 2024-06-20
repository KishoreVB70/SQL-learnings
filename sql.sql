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
RENAME TABLE product to products;

-- drop table
DROP TABLE products


-- View
CREATE VIEW chc_view 
SELECT fname, lname
FROM chc;
-- View will get automatically updated as the main table gets updated
SELECT * FROM chc_view
--Delete
DROP VIEW chc_view

-- Index
Show INDEXES FROM chc;
--Create
CREATE INDEX flname_idx
ON chc(fname, lname);
-- Delete
ALTER TABLE chc
DROP INDEX flname_idx;

-- ON Delete -> foreign key

-- Remove foreign key
alter table chc
drop foreign key fk_city;

-- Add with on delete
ALTER TABLE chc
ADD CONSTRAINT fk_city
FOREIGN KEY(city_id) REFERENCES city(id)
ON DELETE SET NULL;