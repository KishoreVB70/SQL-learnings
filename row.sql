-- insert row
INSERT INTO products
-- values must be in order as the schema describes
VALUES(
    1,
    100,
    "jonsnow",
    "blackWatch",
    "2023-04-01"
)
-- insert multiple rows
INSERT INTO products
-- values must be in order as the schema describes
VALUES
    ( 1,100,"jonsnow","blackWatch" ),
    (2,200,"bran","stark");
-- insert data as new row into specific columns
-- other data fields will be NULL
INSERT INTO products(id, power, fname, house, date)
VALUES
    (
        7,
        100,
        "tyrian",
        "lannistar",
        "2023-02-01"
    );

-- Delete row
-- Only using first line will delete all the values
delete from chc
where fname="Theon"

-- Modify row
UPDATE products
SET kingdom_id = 1
-- If where is removed, all the rows will be updated
where kingdom = "North"
