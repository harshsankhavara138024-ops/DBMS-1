-- Create Table

CREATE TABLE CUST_MASTER (
    Cust_no VARCHAR2(5) PRIMARY KEY,
    Cust_name VARCHAR2(20) NOT NULL,
    Address1 VARCHAR2(30),
    Address2 VARCHAR2(30),
    City VARCHAR2(20),
    State VARCHAR2(20),
    Ph_no VARCHAR2(15)
);


-- Insert Data

INSERT INTO CUST_MASTER VALUES 
('C1','Priya','RingRoad','Puja Park','Ahmedabad','Gujarat','8989878548');

INSERT INTO CUST_MASTER VALUES 
('C2','Puja','Lajpat Nager','Shyamal colony','Banaras','UP','7898456213');

INSERT INTO CUST_MASTER VALUES 
('C3','Ankit','Borivali','Panchayat nager','Mumbai','Maharashtra','7885984251');

INSERT INTO CUST_MASTER VALUES 
('C4','Ravi','VajdiRoad','Nandbhoomi colony','Delhi','Delhi','7898452034');

INSERT INTO CUST_MASTER VALUES 
('C5','Alpa','Jamanager Road','Railway colony','Ahmedabad','Gujarat','7465241589');

COMMIT;


-- Perform Queries

--1. Select information about all customers
SELECT * FROM CUST_MASTER;

--2. Display the list of customers belonging to Gujarat state
SELECT * FROM CUST_MASTER
WHERE State = 'Gujarat';

--3. Sort the customer by their customer name
SELECT * FROM CUST_MASTER
ORDER BY Cust_name;

--4. Display city from table with distinct values
SELECT DISTINCT City
FROM CUST_MASTER;

--5. Change the address1 of Priya from 'RingRoad' to 'CG Road'
UPDATE CUST_MASTER
SET Address1 = 'CG Road'
WHERE Cust_name = 'Priya';

--6. Display city of customer whose state is Gujarat
SELECT City
FROM CUST_MASTER
WHERE State = 'Gujarat';

--7. Add new column pin_code into cust_master table
ALTER TABLE CUST_MASTER
ADD pin_code NUMBER(6);

--8. Drop column pin_code from table
ALTER TABLE CUST_MASTER
DROP COLUMN pin_code;

--9. Delete the customer having ph_no value '7898452034'
DELETE FROM CUST_MASTER
WHERE Ph_no = '7898452034';

--10. Rename table from cust_master to customer_detail
RENAME CUST_MASTER TO CUSTOMER_DETAIL;

COMMIT;