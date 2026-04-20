-- 1. Give name of customers who are depositors having same branch city of mr.sunil.
SELECT cname 
FROM DEPOSIT 
WHERE bname IN (
    SELECT bname 
    FROM BRANCH 
    WHERE city = (
        SELECT city 
        FROM CUSTOMERS 
        WHERE cname = 'SUNIL'
    )
);

-- 2. Give deposit details and loan details of customer in same city where pramod is living.Assuming 'pramod' is a customer name (might be PRMOD in DEPOSIT? We'll use CUSTOMERS)
SELECT d.*, b.* 
FROM DEPOSIT d, BORROW b 
WHERE d.cname = b.cname 
AND d.cname IN (
    SELECT cname 
    FROM CUSTOMERS 
    WHERE city = (
        SELECT city 
        FROM CUSTOMERS 
        WHERE cname = 'PRAMOD'
    )
);

-- 3. Create a query to display the employee numbers and last names of all employees who earn more than the average salary. Sort the results in ascending order of salary.
SELECT emp_no, emp_name, emp_sal 
FROM EMPLOYEE 
WHERE emp_sal > (SELECT AVG(emp_sal) FROM EMPLOYEE) 
ORDER BY emp_sal ASC;

-- 5. Display the department number, name, and job for every employee in the Accounting department.
SELECT e.dept_no, e.emp_name, j.job_name 
FROM EMPLOYEE e 
JOIN JOB j ON e.emp_sal BETWEEN j.min_sal AND j.max_sal 
WHERE j.job_name = 'Account'

-- 6. Give name of customer who are borrowers and depositors and having living city nagpur
SELECT c.cname 
FROM CUSTOMERS c 
WHERE c.city = 'NAGPUR' 
AND c.cname IN (SELECT cname FROM DEPOSIT) 
AND c.cname IN (SELECT cname FROM BORROW);

-- 7. Give city as their city name of customers having same living branch.
SELECT c.cname, c.city 
FROM CUSTOMERS c 
JOIN DEPOSIT d ON c.cname = d.cname 
JOIN BRANCH b ON d.bname = b.bname 
WHERE c.city = b.city;