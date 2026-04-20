-- Create Table

CREATE TABLE PERSON (
    Person_Id NUMBER PRIMARY KEY,
    Fname VARCHAR2(20) NOT NULL,
    Lname VARCHAR2(20) NOT NULL,
    City VARCHAR2(20),
    Salary NUMBER(10)
);


-- Insert Data

INSERT INTO PERSON VALUES (1,'Sneha','Sheth','Rajkot',10000);

INSERT INTO PERSON VALUES (2,'Puja','Parmar','Ahmedabad',2000);

INSERT INTO PERSON VALUES (3,'Riya','Gajar','Pune',8000);

INSERT INTO PERSON VALUES (4,'Sandip','Jadeja','Pune',5000);

INSERT INTO PERSON VALUES (5,'Alpesh','Prajapati','Mumbai',20000);

COMMIT;


-- Perform Queries

--1. Select information about Person_Id, Fname of the person
SELECT Person_Id, Fname
FROM PERSON;

--2. Display the list of person
SELECT * FROM PERSON;

--3. Sort the person by salary
SELECT * FROM PERSON
ORDER BY Salary;

--4. Display city from table with distinct values
SELECT DISTINCT City
FROM PERSON;

--5. Change the city of Sandip from Pune to Kolkata
UPDATE PERSON
SET City = 'Kolkata'
WHERE Fname = 'Sandip';

--6. Display person whose Lname is “Prajapati”
SELECT * FROM PERSON
WHERE Lname = 'Prajapati';

--7. Add new columns state, Birthdate and pincode into table
ALTER TABLE PERSON
ADD (
    State VARCHAR2(20),
    Birthdate DATE,
    Pincode NUMBER(6)
);

--8. Display all information of person having salary more than 6000
SELECT * FROM PERSON
WHERE Salary > 6000;

--9. Delete the person having salary less than 3000
DELETE FROM PERSON
WHERE Salary < 3000;

--10. Rename table from person to person_master
RENAME PERSON TO PERSON_MASTER;

COMMIT;