-- Number of rows for a particular column
-- as alias is not compulsory
SELECT count(power) as alias
FROM chc;

--max
SELECT max(power) FROM chc;
SELECT min(power) FROM chc;
SELECT avg(power) FROM chc;
SELECT sum(power) FROM chc;

SELECT concat(fname, " ", lname) FROM chc;