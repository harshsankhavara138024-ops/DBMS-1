-- 1. List total deposit from deposit.
SELECT SUM(amount) AS Total_Deposit FROM DEPOSIT;

-- 2. List total loan from karolbagh branch.
SELECT SUM(amount) AS Total_Loan 
FROM BORROW 
WHERE bname = 'KAROLBAGH';

-- 3. Give maximum loan from branch vrc.
SELECT MAX(amount) AS Max_Loan 
FROM BORROW 
WHERE bname = 'VRC';

-- 4. Count total number of customers.
SELECT COUNT(*) AS Total_Customers FROM CUSTOMERS;

-- 5. Count total number of customer's cities.
SELECT COUNT(DISTINCT city) AS Distinct_Cities FROM CUSTOMERS;

-- 6. Create table supplier from employee with all the columns.
CREATE TABLE SUPPLIER AS 
SELECT * FROM EMPLOYEE;

-- 7. Create table sup1 from employee with first two columns.
CREATE TABLE SUP1 AS 
SELECT emp_no, emp_name FROM EMPLOYEE;

-- 8. Create table sup2 from employee with no data.
CREATE TABLE SUP2 AS 
SELECT * FROM EMPLOYEE 
WHERE 1=0;

-- 9. Insert the data into sup2 from employee whose second character should be 'n'and string should be 5 characters long in employee name field.
INSERT INTO SUP2 
SELECT * FROM EMPLOYEE 
WHERE emp_name LIKE '_n___';   

-- 10. Delete all the rows from sup1.
DELETE FROM SUP1;

-- 11. Delete the detail of supplier whose sup_no is 103.
DELETE FROM SUPPLIER 
WHERE emp_no = 103;

-- 12. Rename the table sup2 to suplier_two.
RENAME SUP2 TO SUPLIER_TWO;

-- 13. Destroy table sup1 with all the data.
DROP TABLE SUP1;

-- 14. Update the value dept_no to 10 where second character of emp. name is 'm'.
UPDATE EMPLOYEE 
SET dept_no = 10 
WHERE emp_name LIKE '_m%';

-- 15. Update the value of employee name whose employee number is 103.
UPDATE EMPLOYEE 
SET emp_name = 'Aditya'   
WHERE emp_no = 103;