INSERT INTO TEAMS
VALUES('t004', 'Jets', 10, 5)

INSERT INTO CUSTOMERS(ctr_number, email, first_name, last_name, phone_number, current_balance, loyalty_card_number)
VALUES ('c02001', 'brianrog@hootech.com', 'Brian', 'Rogers', '01654564898', -5 \ 50, 'lc4587') ;

SELECT start_date, TO_CHAR (start_time, 'HH24:SS'), price, end_date, TO_CHAR(end_time, 'HH24:MI')
FROM price_history ;

UPDATE price_history
SET end_date = SYSDATE, end_time = current_TIMESTAMP
WHERE itm_number = 'im01101048' AND end_date IS NULL;

INSERT INTO PRICE_HISTORY(start_date, start_time, price, itm_number)
VALUES(SYSDATE, CURRENT_TIMESTAMP, 99.99, 'im01101048')

DELETE FROM CUSTOMERS_ADDRESSES
WHERE id = 'ca0101' 
*CREATE TABLE TEAMS(
id  VARCHAR2(4)CONSTRAINT tm_id_pk PRIMARY KEY,
name VARCHAR2(20)
) ;

CREATE TABLE TEAMS(
id  VARCHAR2(4)CONSTRAINT tm_id_pk PRIMARY KEY,
name VARCHAR2(20)
) ;

CREATE TABLE ITEMS(
item_no   VARCHAR2(10) CONSTRAINT itm_item_no_pk PRIMARY KEY,
M_Name    VARCHAR2(20),
"size"      CHAR(1),
"category"  VARCHAR2(25)
) ;

CREATE TABLE CUSTOMERS(
ctr_number   VARCHAR2(6) CONSTRAINT cst_ctr_number_pk PRIMARY KEY,
first_name   VARCHAR2(20),
last_name    VARCHAR2(30),
phone_no     VARCHAR2(11)
) ;

ALTER TABLE ITEMS
ADD color VARCHAR2(15)

ALTER TABLE TEAMS
RENAME COLUMN name to team_name

ALTER TABLE ITEMS
MODIFY "size" NUMBER(2)

INSERT INTO CUSTOMERS
VALUES('JSG021', 'SG Boot', 36, 'JSG') ;

INSERT INTO ITEMS
VALUES ('JAE001', 'AE Shorts', 32, 'JAE')

INSERT INTO CUSTOMERS
VALUES('7892', 'Mohamad', 'Faiz', '0178890040', 'JAE001') ;

INSERT INTO CUSTOMERS
VALUES ('9088', 'Alifah', 'Amran', '0113679081', 'JBP001')


DML 2 SQL 3

SELECT*FROM customers
SELECT*FROM teams
SELECT*FROM items

SELECT ctr_number, first_name, last_name, phone_number
FROM customers
SELECT name, number_of_players
FROM teams
SELECT name, description, category
FROM items

SELECT first_name, last_name, current_balance, current_balance/12
FROM customers
SELECT first_name, last_name, current_balance, current_balance - 5
FROM customers

SELECT first_name "First Name", last_name "Last Name", current_balance "Balance", current_balance/12 "Montlhy Repayments" 
FROM customers

