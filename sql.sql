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
-- OR
ON DELETE CASCADE

-- Stored procedure
delimiter $$
create procedure aggregor()
begin
    select sum(power) as tpower, count(id), avg(power), kingdom, kingdom_id from chc
    group by kingdom, kingdom_id with rollup 
    order by  tpower;
end $$
delimiter ;
-- Calling
CALL aggregor()
-- drop
DROP procedure aggregor()
-- Arguments
delimiter $$
create procedure pawar(in idd int)
begin  
    select max(power) from chc
    where kingdom_id = idd;
end $$
delimiter ;

-- Triggers
show triggers
-- Trigger for update
create trigger hopower
before update on chc
for each row
set new.hapower = (new.power / 2);
-- Trigger for create
create trigger hopower_insert
before insert on chc
for each row
set new.hapower = (new.power / 2);
-- Insert which affects another table
create trigger after_power_kdm
after insert on chc
for each row
update kdm
set total_power = total_power + new.power
where id = new.kingdom_id;
-- Similarly for delete
create trigger after_delete_power_kdm
after delete on chc
for each row
update kdm
set total_power = total_power - old.power
where id = old.kingdom_id;