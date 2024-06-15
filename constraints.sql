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


-- Check constraint

-- Perform checks when adding values 
-- Check if one field must be higher than or below a threshold value
create table got(id int, fname varchar(40), CONSTRAINT chk_id CHECK(id < 100));
-- Add to existing
alter table char
add constraint chk_id CHECK(id < 100);
-- Remove check
alter table char
drop constraint chk_id

-- Primary key -> both unique and not null into the same thing

create table got(id int PRIMARY KEY, power int);
-- Existing
alter table char
modify column id int PRIMARY KEY;
-- his way
alter table char
add CONSTRAINT PRIMARY KEY(id);
-- Remove primary key
alter table char
DROP PRIMARY KEY;

-- Foreign Key -> Link 2 tables

-- New
create table got(id int PRIMARY KEY, power int, FOREIGN KEY(city_id) REFERENCES city(id);
-- Existing
alter table char
add CONSTRAINT fk_city_id
FOREIGN KEY(city_id) REFERENCES city(id)
-- delete
alter table char
drop constraint fk_city_id