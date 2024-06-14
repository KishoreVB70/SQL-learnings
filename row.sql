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
    (
        1,
        100,
        "jonsnow",
        "blackWatch",
        "2023-04-01"
    ),
    (
        2,
        200,
        "bran",
        "stark",
        "2024-03-02"
    );


-- insert data as new row into specific columns
-- other data fields will be NULL
INSERT INTO products
VALUES
    (
        7,
        100,
        "tyrian",
        "lannistar",
        "2023-02-01"
    );

-- Fill up the NULL values using ADD

-- Modify row