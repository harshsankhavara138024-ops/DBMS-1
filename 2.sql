-- Create Table

--1.ITEM_MASTER
CREATE TABLE ITEM_MASTER (
    Id VARCHAR2(5) PRIMARY KEY,
    Name VARCHAR2(20) NOT NULL,
    Type VARCHAR2(20) NOT NULL,
    Price NUMBER(8,2) NOT NULL,
    Quality VARCHAR2(15),
    Item_pack_date DATE
);


-- Insert Data into ITEM_MASTER

INSERT INTO ITEM_MASTER 
VALUES ('I1','Dairymilk','Chocolate',500,'Good',
        TO_DATE('12-AUG-2000','DD-MON-YYYY'));

INSERT INTO ITEM_MASTER 
VALUES ('I2','Kajukatri','Mithai',1000,'Verygood',
        TO_DATE('15-JAN-2016','DD-MON-YYYY'));

INSERT INTO ITEM_MASTER 
VALUES ('I3','Pizza','Fastfood',350,'Average',
        TO_DATE('20-FEB-2015','DD-MON-YYYY'));

INSERT INTO ITEM_MASTER 
VALUES ('I4','Orangejuice','Juice',50,'Best',
        TO_DATE('05-FEB-2016','DD-MON-YYYY'));

INSERT INTO ITEM_MASTER 
VALUES ('I5','Vanilla_cake','Bakery',2000,'Good',
        TO_DATE('01-JAN-2016','DD-MON-YYYY'));

COMMIT;


-- Perform Queries

--1. Select information about price, quality and item_pack_date of the item
SELECT Price, Quality, Item_pack_date 
FROM ITEM_MASTER;

--2. Display information about item
SELECT * FROM ITEM_MASTER;

--3. Sort the item by its quality
SELECT * FROM ITEM_MASTER
ORDER BY Quality;

--4. Display quality from table with distinct values
SELECT DISTINCT Quality 
FROM ITEM_MASTER;

--5. Change the quality of item from Good to Verygood
UPDATE ITEM_MASTER
SET Quality = 'Verygood'
WHERE Quality = 'Good';

--6. Display item having quality Verygood
SELECT * FROM ITEM_MASTER
WHERE Quality = 'Verygood';

--7. Add new column item_pur_date into table
ALTER TABLE ITEM_MASTER
ADD item_pur_date DATE;

--8. Display all information of items having price more than Rs. 500
SELECT * FROM ITEM_MASTER
WHERE Price > 500;

--9. Delete the item having price of Rs. 50
DELETE FROM ITEM_MASTER
WHERE Price = 50;

--10. Rename table from ITEM_MASTER to ITEM_DETAIL
RENAME ITEM_MASTER TO ITEM_DETAIL;

COMMIT;