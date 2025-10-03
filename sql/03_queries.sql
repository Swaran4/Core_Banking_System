-- File: 03_queries.sql
-- These queries demonstrate how to retrieve data from the tables.

--------------------------------------------------------------------------------
-- PART 1: SIMPLE, SINGLE-TABLE QUERIES (SELECT, WHERE, ORDER BY)
--------------------------------------------------------------------------------

-- S1: Retrieve all data from the Employee table.
SELECT *
FROM employee;

-- S2: Find the names of employees who earn more than $55,000.
SELECT
    Ename,
    Salary
FROM
    employee
WHERE
    Salary > 55000;

-- S3: List all distinct project locations.
SELECT DISTINCT
    P_Loc
FROM
    project;

-- S4: Find the SSN and Date of Birth (DOB) of the manager of the 'Research' department.
SELECT
    E.SSN,
    E.DOB
FROM
    employee E
JOIN
    department D ON E.SSN = D.Mgr_SSN
WHERE
    D.DName = 'Research';

-- S5: Retrieve the name and DOB of all dependents, ordered alphabetically by name.
SELECT
    Dependent_Name,
    Dependent_DOB
FROM
    dependents
ORDER BY
    Dependent_Name ASC;

