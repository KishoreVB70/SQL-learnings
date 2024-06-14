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
CREATE TABLE products(
    id int,
    name varchar(20),
    spoiled date
)


