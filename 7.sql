-- Create Table

CREATE TABLE JOB (
    job_id VARCHAR2(10)primary key,
    job_name VARCHAR2(20)not null,
    min_sal NUMBER(8,2),
    max_sal NUMBER(8,2)
);

CREATE TABLE EMPLOYEE (
    emp_no NUMBER(4) primary key,
    emp_name VARCHAR2(20)not null,
    emp_sal NUMBER(8,2),
    emp_comm VARCHAR2(20),
    dept_no NUMBER(4)
);

CREATE TABLE DEPOSIT (
    A_no VARCHAR2(5) primary key,
    cname VARCHAR2(15)not null,
    bname VARCHAR2(15) not null,
    amount NUMBER(9,2)not null,
    date DATE
);

-- Insert data

INSERT INTO JOB VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO JOB VALUES ('MK_MGR', 'Marketing manager', 9000, 15000);
INSERT INTO JOB VALUES ('FI_MGR', 'Finance manager', 8200, 12000);
INSERT INTO JOB VALUES ('FI_ACC', 'Account', 4200, 9000);
INSERT INTO JOB VALUES ('LEC', 'Lecturer', 6000, 17000);
INSERT INTO JOB VALUES ('COMP_OP', 'Computer Operator', 1500, 3000);

INSERT INTO EMPLOYEE VALUES (101, 'Smith', 800, '', 20);
INSERT INTO EMPLOYEE VALUES (102, 'Snehal', 1600, '300', 25);
INSERT INTO EMPLOYEE VALUES (103, 'Adama', 11000, '', 20);
INSERT INTO EMPLOYEE VALUES (104, 'Aman', 3000, '', 15);
INSERT INTO EMPLOYEE VALUES (105, 'Anita', 5000, '5,000', 10);
INSERT INTO EMPLOYEE VALUES (106, 'Sneha', 2450, '2,450', 10);
INSERT INTO EMPLOYEE VALUES (107, 'Anamika', 2975, '', 30);

INSERT INTO DEPOSIT2 VALUES ('101', 'anil', 'andheri', 70000, TO_DATE('01-JAN-06','DD-MON-YY'));
INSERT INTO DEPOSIT2 VALUES ('102', 'sunil', 'virar', 50000, TO_DATE('15-JUL-06','DD-MON-YY'));
INSERT INTO DEPOSIT2 VALUES ('103', 'jay', 'villeparle', 65000, TO_DATE('12-MAR-06','DD-MON-YY'));
INSERT INTO DEPOSIT2 VALUES ('104', 'vijay', 'andheri', 80000, TO_DATE('17-SEP-06','DD-MON-YY'));
INSERT INTO DEPOSIT2 VALUES ('105', 'keyur', 'dadar', 75000, TO_DATE('19-NOV-06','DD-MON-YY'));
INSERT INTO DEPOSIT2 VALUES ('106', 'mayur', 'borivali', 55000, TO_DATE('21-DEC-06','DD-MON-YY'));

COMMIT;


-- 1. Retrieve all data from employee, jobs and deposit.
SELECT * FROM EMPLOYEE;
SELECT * FROM JOB;
SELECT * FROM DEPOSIT2;

-- 2. Give details of account no. and deposited rupees of customers having account opened between dates 01-01-06 and 25-07-06.
SELECT A_no, amount 
FROM DEPOSIT2 
WHERE date BETWEEN TO_DATE('01-JAN-06','DD-MON-YY') 
               AND TO_DATE('25-JUL-06','DD-MON-YY');

-- 3. Display all jobs with minimum salary is greater than 4000.
SELECT * FROM JOB 
WHERE min_sal > 4000;

-- 4. Display name and salary of employee whose department no is 20. Give alias name to name of employee.
SELECT emp_name AS "Employee Name", emp_sal 
FROM EMPLOYEE 
WHERE dept_no = 20;

-- 5. Display employee number, name and department details of those employee whose department lies in (10,20).
SELECT emp_no, emp_name, dept_no 
FROM EMPLOYEE 
WHERE dept_no IN (10,20);

-- 6. Display all employee whose name start with 'A'.
SELECT * FROM EMPLOYEE 
WHERE emp_name LIKE 'A%';

-- 7. Display all employee whose third character is 'a'.
SELECT * FROM EMPLOYEE 
WHERE emp_name LIKE '__a%';

-- 8. Display all employee whose name start with 'A' and third character is 'a'
SELECT * FROM EMPLOYEE 
WHERE emp_name LIKE 'A_a%';

-- 9. Display name, number and salary of those employees whose name is 5 characters long and first three characters are 'Ani'.
SELECT emp_name, emp_no, emp_sal 
FROM EMPLOYEE 
WHERE emp_name LIKE 'Ani__';

-- 10. Sort and display the names of customers from deposit table.
SELECT cname FROM DEPOSIT2 
ORDER BY cname;