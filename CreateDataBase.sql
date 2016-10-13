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
