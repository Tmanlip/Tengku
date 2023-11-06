INSERT INTO TEAMS
VALUES('t004', 'Jets', 10, 5)

INSERT INTO CUSTOMERS(ctr_number, email, first_name, last_name, phone_number, current_balance, loyalty_card_number)
VALUES ('c02001', 'brianrog@hootech.com', 'Brian', 'Rogers', '01654564898', -5 \ 50, 'lc4587') ;

SELECT start_date, TO_CHAR (start_time, 'HH24:SS'), price, end_date, TO_CHAR(end_time, 'HH24:MI')
FROM price_history ;

2.	UPDATE price_history
SET end_date = SYSDATE, end_time = current_TIMESTAMP
WHERE itm_number = 'im01101048' AND end_date IS NULL;