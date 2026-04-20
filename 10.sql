-- Create table 

CREATE TABLE CUSTOMER (
    CUST_NO NUMBER(4) PRIMARY KEY,
    FIRST_NAME VARCHAR2(20) NOT NULL,
    LAST_NAME VARCHAR2(20),
    ADDRESS VARCHAR2(20),
    CITY VARCHAR2(8),
    STATE VARCHAR2(20),
    PIN NUMBER(6),
    B_DATE DATE,
    STATUS CHAR(1) CHECK (STATUS IN ('V','T','A'))
);

--Insert data

INSERT INTO CUSTOMER VALUES (1003, 'RAJ', 'BAHADUR', 'SHANTI VILLA', 'UDP', 'KARNATAKA', 576101, TO_DATE('01-AUG-70','DD-MON-YY'), 'V');
INSERT INTO CUSTOMER VALUES (1004, 'FELIX', 'SIMON', 'M-J-56 PJM', 'GOA', 'GOA', 403002, TO_DATE('12-FEB-71','DD-MON-YY'), 'A');
INSERT INTO CUSTOMER VALUES (1005, 'RAJAN', 'KUTTY', 'A1 TRADERS', 'KNR', 'KERALA', 670001, TO_DATE('09-JUN-71','DD-MON-YY'), 'A');
INSERT INTO CUSTOMER VALUES (1006, 'SHILPA', 'PAI', '12/4 BMNG', 'KARNATAKA', 'KARNATAKA', 574154, TO_DATE('11-DEC-70','DD-MON-YY'), 'I');
INSERT INTO CUSTOMER VALUES (1007, 'BOSCO', 'RAKSHIT', 'R.K. PLAZA', 'BNG', 'KARNATAKA', 576201, TO_DATE('01-JAN-71','DD-MON-YY'), 'A');

COMMIT;

-- 3. Display all records
SELECT * FROM CUSTOMER;

-- 4. Display all records where state is KARNATAKA
SELECT * FROM CUSTOMER WHERE STATE = 'KARNATAKA';

-- 5. Delete row where PIN CODE is 576201
DELETE FROM CUSTOMER WHERE PIN = 576201;

-- 6. Set PIN CODE equal 476001 where CUST_NO=1004
UPDATE CUSTOMER SET PIN = 476001 WHERE CUST_NO = 1004;

-- 7. Change ADDRESS as "KAVI MUDDANNA MARG" AND PIN=576104 where CUST_NO=1003
UPDATE CUSTOMER SET ADDRESS = 'KAVI MUDDANNA MARG', PIN = 576104 WHERE CUST_NO = 1003;

-- 8. Delete records of GOA state and then retrieve all back (demonstrate with ROLLBACK or re-insert)
DELETE FROM CUSTOMER WHERE STATE = 'GOA';
ROLLBACK;  

-- 9. List all records for INVALID ('I') persons
SELECT * FROM CUSTOMER WHERE STATUS = 'I';

-- 10. Select all records with single occurrence (without duplication) of state
SELECT DISTINCT STATE FROM CUSTOMER;

-- 11. Sort and display customer data in alphabetic order of state
SELECT * FROM CUSTOMER ORDER BY STATE;

-- 12. Sort and display state field in descending order
SELECT STATE FROM CUSTOMER ORDER BY STATE DESC;

-- 13. Select records of KARNATAKA customers who are valid ('V')
SELECT * FROM CUSTOMER WHERE STATE = 'KARNATAKA' AND STATUS = 'V';

-- 14. Retrieve records of Karnataka / Kerala customers
SELECT * FROM CUSTOMER WHERE STATE IN ('KARNATAKA','KERALA');

-- 15. Retrieve records of Karnataka / Kerala customers who are ACTIVE ('A')
SELECT * FROM CUSTOMER WHERE STATE IN ('KARNATAKA','KERALA') AND STATUS = 'A';

-- 16. Retrieve records of Karnataka customers with pin code 576201
SELECT * FROM CUSTOMER WHERE STATE = 'KARNATAKA' AND PIN = 576201;

-- 17. Display all rows except for customer number 1005
SELECT * FROM CUSTOMER WHERE CUST_NO != 1005;

-- 18. Retrieve rows where state name begins with K and followed by any other character
SELECT * FROM CUSTOMER WHERE STATE LIKE 'K%';

-- 19. Retrieve rows where name contains the word RAJ embedded (in FIRST_NAME or LAST_NAME)
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE '%RAJ%' OR LAST_NAME LIKE '%RAJ%';

-- 20. Display all rows where CUST_NO is in range 1003 to 1005
SELECT * FROM CUSTOMER WHERE CUST_NO BETWEEN 1003 AND 1005;

-- 21. Display all rows whose dates are in the range 10-JAN-71 and 31-DEC-71
SELECT * FROM CUSTOMER WHERE B_DATE BETWEEN TO_DATE('10-JAN-71','DD-MON-YY') 
                                       AND TO_DATE('31-DEC-71','DD-MON-YY');

-- 22. Retrieve rows where city column equals to UDP or MNG or BNG or PGN
SELECT * FROM CUSTOMER WHERE CITY IN ('UDP','MNG','BNG','PGN');

-- 23. Rename customer table to CUST
RENAME CUSTOMER TO CUST;