-- SQL Tutorial
-- In SQL, always use 'single quotes'

-- Basics
SELECT DISTINCT *  -- COL_NAME
FROM <TABLE_NAME>
LIMIT 10;  -- NUM ROW RETURNED

-- WHERE, AND, OR, BETWEEN, IN operator
SELECT *
FROM <TABLE_NAME>
WHERE <BOOL_EXPR> AND <BOOL_EXPR>;
-- WHERE <COL_NAME> BETWEEN VAL1 AND VAL2
-- WHERE <COL_NAME> in (VAL1, VAL2, ...)

-- NULL or IS NOT NULL
SELECT *
FROM <TABLE_NAME>
WHERE <COL_NAME> IS NOT NULL;

-- Aggregate functions
-- COUNT, AVG, SUM, MAX, MIN
SELECT COUNT(DISTINCT *)
FROM <TABLE_NAME>;

-- What if I want to use aggr function as a condition?
SELECT *
FROM <TABLE_NAME>
HAVING COUNT(<COL_NAME>) > 10;

-- Aliasing (AS)
SELECT (4.0 / 3.0) AS result;

-- Sort
SELECT *
FROM <TABLE_NAME>
ORDER BY <COL_NAME>; -- sort by A-Z
-- ORDER BY <COL_NAME> DESC; -- sort by Z-A
-- ORDER BY <COL_NAME1> <COL_NAME2>;

-- Group: to be used with an aggregate function
SELECT *
FROM <TABLE_NAME>
GROUP BY <COL_NAME>;


