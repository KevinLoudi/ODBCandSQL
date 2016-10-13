/*
  Author: Kevin
  Propose: Learn basic SQL method on MySQL
  Date: 13th, Oct, 2016
*/

CREATE SCHEMA `dbstation` ;

CREATE TABLE `DBStation`.`organization` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Age` INT NULL,
  PRIMARY KEY (`ID`));
COMMENT = 'The first column is primary key';

----------
-- new a database
CREATE DATABASE CUSTOMER
-- delete a database
DROP DATABASE OLDCUSTOMER
-- see all available database
SHOW DATABASES
-- use a data base
USE CUSTOMER  
-- creat a table for customer information storage
CREATE TABLE CUSTOMERSINFO(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
    );

-- check if the table is established
DESC CUSTOMERSINFO;

-- delete the table 
DROP TABLE CUSTOMERSINFO 

-- insert new record
INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMERSINFO (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00 );

-- another method realize insert action
INSERT INTO CUSTOMERSINFO 
VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );

-- show part of segment in the table
SELECT ID, NAME, SALARY FROM CUSTOMERSINFO;
SELECT * FROM CUSTOMERSINFO;

-- select with condition
SELECT ID, NAME, SALARY 
FROM CUSTOMERSINFO
WHERE SALARY > 2000;

SELECT ID, NAME, SALARY 
FROM CUSTOMERSINFO
WHERE NAME = 'Hardik';

-- with mutlipy condition, logically 'and'
SELECT ID, NAME, SALARY 
FROM CUSTOMERSINFO
WHERE SALARY > 2000 AND age < 25;

-- with mutlipy condition, logically 'or'
SELECT ID, NAME, SALARY 
FROM CUSTOMERSINFO
WHERE SALARY > 2000 OR age < 25;

-- update exist record
SELECT * FROM CUSTOMERSINFO

UPDATE CUSTOMERSINFO
SET ADDRESS = 'Pune'
WHERE ID = 6;
SELECT * FROM CUSTOMERSINFO

-- re setup all segement
UPDATE CUSTOMERSINFO
-- all address and salary will be update
SET ADDRESS = 'Pune', SALARY = 1000.00;

--delete part of the record
DELETE FROM CUSTOMERSINFO
WHERE ID = 6;

-- select record whose salary start with '200'
-- make comparsion
-- '%' represent several following character and '_' following
-- singal character
SELECT * FROM CUSTOMERSINFO
WHERE SALARY LIKE '200%';

-- show the first 3 record
SELECT TOP 3 * FROM CUSTOMERSINFO;
-- the following method is similar
SELECT * FROM CUSTOMERSINFO LIMIT 3;
-- only work in Oracle 
SELECT * FROM CUSTOMERSINFO WHERE ROWNUM <= 3;

-- sort the record by one column or several colum combine
SELECT * FROM CUSTOMERSINFO ORDER BY NAME, SALARY;

-- group similar data set
SELECT NAME, SUM(SALARY) FROM CUSTOMERSINFO GROUP BY NAME;

-- skip the repeated record
-- when a specific salary appear twice, 'DISTINCT'
--   delete the extra record
SELECT SALARY FROM CUSTOMERSINFO ORDER BY SALARY;
SELECT DISTINCT SALARY FROM CUSTOMERSINFO ORDER BY SALARY;

-- sort record in a self-defined way
SELECT * FROM CUSTOMERSINFO
        ORDER BY (CASE ADDRESS
        WHEN 'DELHI'     THEN 1
        WHEN 'BHOPAL'    THEN 2
        WHEN 'KOTA'      THEN 3
        WHEN 'AHMADABAD' THEN 4
        WHEN 'MP'   THEN 5
        ELSE 100 END) ASC, ADDRESS DESC;