> Structured Query Language
- The **language** for **relational database** - Does four basic operations
- Language to **interact** with Relational database management systems
- Instead of writing logic, we would write what data we want to get from the data base
1. C - Create Data
2. R - Read Data
3. U - Update Data
4. D - Delete Data
- SQL is optimized for the ease to do all the above with data
- There are many different software that implement SQL Language - [[MySQL]] anol.
- Sqlite3 - Light Weight version of SQL - Used in Iphones and Androids
- SQL implementation vary slightly between the different management systems
---
- It is a hybrid language with 4 language functionality
	1. DDL (Data Definition Language): Statements that define the structure of the database, such as `CREATE TABLE`, `ALTER TABLE`, and `DROP TABLE`.
	2. DML (Data Manipulation Language): Statements that manage data within the database, such as `INSERT`, `UPDATE`, `DELETE`, and `SELECT`.
	3. DCL (Data Control Language): Statements that control access to data, such as `GRANT` and `REVOKE`.
	4. TCL (Transaction Control Language): Statements that manage transactions, such as `COMMIT`, `ROLLBACK`, and `SAVEPOINT`
### Code
`SET SQL_SAFE_UPDATES = 0;`

- Query -> Set of instruction to describe the information you want from the DB
- Comments -> `--`
1. Database
	1. Create database
	2. Delete database
	3. Rename database
	4. Use database
	5. alter database
2. Table
	1. Create table
	2. delete, Rename
3. Columns
	1. Add new column
	2. Rename column
	3. Delete column
	4. Change datatype
	5. Move
	6. Set default value to column
4. Row
	1. Add values
	2. Add multiple values
	3. Add values for specific columns
	4. Update values
	5. Delete rows
5. Select
	1. Select all
	2. Where -> Select specific rows
		1. Find IS NULL and not IS NULL
	3. Query specific columns
6. Commits
	1. Auto commit is always on in mySQL
		1. **This is not even a tad bit useful**
		2. Every change(transaction) is saved
		3. If it is turned off, we need to save manually when we desire to, like git
	3. `COMMIT` is used for manual committing
	4. `ROLLBACK` is used to get to the previous commit
7. Date time
	1. `current_date()`
	2. `current_time()`
	3. now()
8. Constraints
	1. Unique constraint
		1. A column cannot have duplicate values
		2. While creating table
		3. Can be updated after 
	2. NULL constraint
		1. A column value cannot be NULL
		2. while creating table
		3. Can be update after also
	3. DEFAULT constraint(not really a constraint, but whatever)
	4. PRIMARY KEY
9. Join
	1. Clause used to join rows from different tables
	2. Any column from any table can be matched
	3. Through a related column -> Foreign Key
	Types
	1. Inner join
		1. Displays all the rows which have the foreign key
		2. Discards the if foreign key is NULL
	2. Left Join -> show everything from the left, and show matching in right
	3. Right Join -> show everything from right and show matching in left
10. Function
	1. Pass parameters
	2. There are lot of functions
	Functions
	1. Count
		2. Number of rows present for a particular column
		3. Discards the NULL values and returns the number of non NULL values
	2. Max -> max value
	3. Min -> min value
	4. avg
	5. sum
	6. concat -> combine two values
11. Logical operators
	1. AND
	2. OR
	3. NOT
	4. BETWEEN
	5. ON
		1. Multiple values for one column - `power in (50,100)`
		2. Kinda like the substitute for AND operator 
12. Wildcard characters
	1. %
		1. Used to substitute a stream of character
		2. Used to find words which a specific character `s%`
		3. Find words which end with specific character `%r`
		4. `select * from chc where fname like "t%"`
	2. _
		1. Substitute one letter
		2. `select * from chc where fname like "Jo_"`
13. order by
	1. Sorting
	2. -- Ascending order, NULL will come first
	3. -- Descending order, NULL will come last
14. Limit
	1. Limit the number of orders queried
	2. Offset can be used
	3. `limit 10` vs `limit 5,10`
		1. From the list, 10 consecutive values from  5th value will be displayed
15. Union Operator
	1. Combines result of 2 or more select statements
16. Self join
	1. Inner join the same table in order to show meaningful data self relational data
17. Views
	1. Virtual tables made from 1 or more real tables
	2. Interacted as if they are real tables
	3. Once the reference table get's updated, it will also be updated
18. Index
	1. Btree data structure to query data faster
	2. Primary key and foreign key is automatically indexed
	3. We can index any column of our choice to find data faster
19. Sub query
	1. Query within query
	2. Mostly used to query one table from resources of another table
20. Group by
	1. Group all rows by a particular column
	2. Used often with aggregate functions -> min, max, avg, count
21. Roll up
	1. Extension of group by
	2. Returns another **row** at the end of group by to show grand total
	3. **Super Aggregate**
	4. It will provide the grand total of the aggregate functions, such as max, avg, count
		1. Average of averages
		2. Count of counts
		3. Max of max's
22. On delete
	2 Clauses
	- Used for deleting foreign key
	- Normally we cannot delete a data which is a foreign key in another table
	1. ON delete set null
		1. If foreign key is deleted, set it to NULL
	2. ON delete cascade
		1. If foreign key is deleted, delete the column
23. Stored procedure
	1. Save SQL code that we use often as a **procedure**
	2. We can call the procedure to perform the code
	3. **Temporary delimiter**
		1. We can change the delimiter (function end `; semi colon`) to another delimiter (`$$`) temporarily, and we need to change it back also
24. Triggers
	1. Perform certain actions when an event occurs
	2. Eg -> Automatic update of some field which is a calculation of another field
	3. For insert event, we can leave the field NULL itself, the code will automatically fill the value in 
	4. ON delete can be used to change one table based on another table