-- Create Table

CREATE TABLE BANK_BRANCH (
    Branch_id VARCHAR2(5) PRIMARY KEY,
    Branch_name VARCHAR2(20),
    Branch_Address VARCHAR2(30),
    Branch_City VARCHAR2(20),
    Branch_State VARCHAR2(20),
    Branch_Open_Date DATE
);


-- Insert Data

INSERT INTO BANK_BRANCH VALUES 
('B001','BOI','JagnathRoad','Rajkot','Gujarat',
TO_DATE('22-MAR-2015','DD-MON-YYYY'));

INSERT INTO BANK_BRANCH VALUES 
('B002','SBI','Boriwali Road','Mumbai','Maharashtra',
TO_DATE('12-JAN-2000','DD-MON-YYYY'));

INSERT INTO BANK_BRANCH VALUES 
('B003','HDFC','AgraRoad','Agra','U.P',
TO_DATE('04-FEB-1998','DD-MON-YYYY'));

INSERT INTO BANK_BRANCH VALUES 
('B004','DenaBank','CGRoad','Ahmedabad','Gujarat',
TO_DATE('20-SEP-2012','DD-MON-YYYY'));

INSERT INTO BANK_BRANCH VALUES 
('B005','ICICI','MajavdiRoad','Junagadh','Gujarat',
TO_DATE('07-MAY-2011','DD-MON-YYYY'));

COMMIT;


-- Perform Queries

--1. Display all information of Bank_Branch
SELECT * FROM BANK_BRANCH;

--2. Display Branch_id of branch
SELECT Branch_id FROM BANK_BRANCH;

--3. Display Branch_id and Branch_address from Branch
SELECT Branch_id, Branch_Address
FROM BANK_BRANCH;

--4. Display Branch_name, Branch_Address and Branch_city
SELECT Branch_name, Branch_Address, Branch_City
FROM BANK_BRANCH;

--5. Display Branch_city, Branch_state and Branch_open_date
SELECT Branch_City, Branch_State, Branch_Open_Date
FROM BANK_BRANCH;

--6. Sort table by Branch_id
SELECT * FROM BANK_BRANCH
ORDER BY Branch_id;

--7. Sort table by Branch_name
SELECT * FROM BANK_BRANCH
ORDER BY Branch_name;

--8. Sort table by Branch_city
SELECT * FROM BANK_BRANCH
ORDER BY Branch_City;

--9. Sort table by Branch_state
SELECT * FROM BANK_BRANCH
ORDER BY Branch_State;

--10. Change the size of Branch_state column
ALTER TABLE BANK_BRANCH
MODIFY Branch_State VARCHAR2(30);

--11. Change the branch_name='Union' where id=B003
UPDATE BANK_BRANCH
SET Branch_name = 'Union'
WHERE Branch_id = 'B003';

--12. Change the state='Delhi' of BOI branch
UPDATE BANK_BRANCH
SET Branch_State = 'Delhi'
WHERE Branch_name = 'BOI';

--13. Change the branch_open_date=04-nov-2015 of Union branch
UPDATE BANK_BRANCH
SET Branch_Open_Date = TO_DATE('04-NOV-2015','DD-MON-YYYY')
WHERE Branch_name = 'Union';

--14. Add column Pincode in branch
ALTER TABLE BANK_BRANCH
ADD Pincode NUMBER(6);

--15. Insert pincode=360006 of Dena Bank
UPDATE BANK_BRANCH
SET Pincode = 360006
WHERE Branch_name = 'DenaBank';

--16. Delete information of Branch having branch_open_date=07-may-2011
DELETE FROM BANK_BRANCH
WHERE Branch_Open_Date = TO_DATE('07-MAY-2011','DD-MON-YYYY');

--17. Rename table Bank_Branch to Branch_master
RENAME BANK_BRANCH TO BRANCH_MASTER;

--18. Display structure of Branch_master
DESC BRANCH_MASTER;

--19. Create Branch_info from Branch_master
CREATE TABLE BRANCH_INFO AS
SELECT * FROM BRANCH_MASTER;

COMMIT;