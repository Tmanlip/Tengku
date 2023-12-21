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

SELECT*FROM customers
WHERE ctr_number = 'c01986'
SELECT first_name, last_name, ctr_number
FROM customers
WHERE current_balance >= 100

SELECT id, odr_date, odr_time
FROM orders
WHERE odr_date < '28-May-2019'
SELECT id, cost, units
FROM inventory_list
WHERE cost BETWEEN 3.00 AND 15.00
SELECT id, cost, units
FROM inventory_list
WHERE units IN (50, 100, 150, 200)
SELECT id, cost, units
FROM inventory_list
WHERE units NOT IN (50, 100, 150, 200)
SELECT itm_number, name
FROM items
WHERE name LIKE 'g%'
SELECT itm_number "Item Number", name
FROM items
WHERE name LIKE '_o%'
SELECT ctr_number AS Customer Number, address_line_1 "Street Address", zip_code AS Postal Code
FROM customers_addresses ;
WHERE address_line_2 = 'Starford' 
AND city = 'Liverpool' ;
SELECT ctr_number AS Customer Number, address_line_1 "Street Address", zip_code AS Postal Code
FROM customers_addresses ;
WHERE address_line_2 = 'Starford' 
SELECT ctr_number AS Customer Number, address_line_1 "Street Address", zip_code AS Postal Code
FROM customers_addresses ;
WHERE NOT (address_line_2 = 'Starford' 
OR city = 'Liverpool' )
SELECT name, number_of_players "Number of Player"
FROM teams
ORDER BY name ASC
OR city = 'Liverpool' 
SELECT 'The ' || name || ' team has ' || number_of_players || ' players and does not receive a discount of ' AS "Team Information"
FROM teams 
WHERE discount is NULL ; 
SELECT 'The ' || name || ' team has ' || number_of_players || ' players and receive a discount of ' || discount || ' percent' AS "Team Information"
FROM teams 
WHERE discount = 10 ; 
SELECT ctr_number "Customer Number", address_line_1 "Street Address", zip_code "Postal Code"
FROM customers_addresses
WHERE city = 'Liverpool' 
AND address_line_2 = 'Starford' ;
SELECT ctr_number "Customer Number", address_line_1 "Street Address", zip_code "Postal Code"
FROM customers_addresses
WHERE city NOT IN 'Liverpool' 
SELECT ROWNUM, firsT_name || ' ' || last_name "Customer Name"
FROM (SELECT first_name, last_name 
      FROM customers
      ORDER BY ROWNUM ASC)
WHERE ROWNUM <= 3 
SELECT first_name, last_name "Last Name", commission_rate "Commission Rate"
FROM sales_representatives
WHERE commission_rate =: com_rate
ORDER BY last_name

SELECT name "Team Name", number_of_players "Player"
FROM teams
ORDER BY DESC4

DML3 SQL 4

SELECT*FROM sales_representatives NATURAL JOIN sales_rep_addresses
SELECT id, email, first_name, last_name, phone_number, address_line_1, address_line_2, city
FROM sales_representatives NATURAL JOIN sales_rep_addresses
SELECT email, first_name, last_name, phone_number, address_line_1, address_line_2, city, id
FROM sales_representatives JOIN sales_rep_addresses
using (id)
SELECT*FROM items JOIN price_history
USING (itm_number)
SELECT c.ctr_number, c.first_name, c.last_name, c.phone_number, c.email, s.first_name, s.last_name, s.email
FROM customers c JOIN sales_representatives s
ON (c.sre_id = s.id)
SELECT c.ctr_number, c.first_name, c.last_name, c.phone_number, c.email, s.first_name, s.last_name, s.email,    
        t.name
FROM customers c JOIN sales_representatives s
ON (c.sre_id = s.id)
JOIN teams t
ON (t.id = c.tem_id)
SELECT c.ctr_number, c.first_name, c.last_name, c.phone_number, c.email, s.first_name, s.last_name, s.email,    
        t.name
FROM customers c JOIN sales_representatives s
ON (c.sre_id = s.id)
JOIN teams t
ON (t.id = c.tem_id)
AND ctr_number = 'c00001'
SELECT 'The cost of ' || i.name || ' on this day was ' || p.price AS "Cost Information"
FROM items i JOIN price_history p
ON i.itm_number = 'im01101045' 
AND p.start_date = '25-November-2016'
SELECT r.first_name Rep, r.last_name Rep, s.first_name Supervisor, s.last_name Supervisor 
FROM sales_representatives s JOIN sales_representatives r
ON (r.supervisor_id = s.id)
SELECT t.name, t.number_of_players, c.ctr_number, c.first_name, c.last_name, c.phone_number, c.email
FROM teams t LEFT OUTER JOIN customers c
ON (t.id = c.tem_id)
SELECT c.first_name AS "Customer First Name", c.last_name AS "Customer Last Name", c.ctr_number, c.phone_number, s.id, s.first_name AS "Sales First Name", s.last_name AS "Sales Last Name",s.phone_number
FROM customers c, sales_representatives s