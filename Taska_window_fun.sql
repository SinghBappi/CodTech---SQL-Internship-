-- creating tables
create table sales_data(sale_id number, customer_id number, region VARCHAR(44), sale_amount number , sale_date date);

drop table sales_data;

-- inserting data into table sales_data

INSERT into SALES_DATA values (1,101,'Kandivali-West',10000,TO_DATE('2024-01-10','YYYY-MM-DD'));
-- selecting data from table
SELECT * from SALES_DATA;
-- inserting more data
INSERT into SALES_DATA values (2,101,'Kandivali-West',1500,TO_DATE('2024-01-12','YYYY-MM-DD'));
INSERT into SALES_DATA values (3,101,'Kandivali-West',7000,TO_DATE('2024-01-15','YYYY-MM-DD'));
INSERT into SALES_DATA values (4,101,'Kandivali-West',8000,TO_DATE('2024-01-18','YYYY-MM-DD'));
INSERT into SALES_DATA values (5,101,'Kandivali-West',20000,TO_DATE('2024-02-01','YYYY-MM-DD'));

-- inserting more & more data 
-- till 9
INSERT into SALES_DATA values (6,102,'Kandivali-North',1000,TO_DATE('2024-02-05','YYYY-MM-DD'));
INSERT into SALES_DATA values (7,104,'Kandivali-West',2000,TO_DATE('2024-02-10','YYYY-MM-DD'));
INSERT into SALES_DATA values (8,102,'Kandivali-West',10000,TO_DATE('2024-02-12','YYYY-MM-DD'));
INSERT into SALES_DATA values (9,105,'Kandivali-South',3000,TO_DATE('2024-02-15','YYYY-MM-DD'));
-- INSERT into SALES_DATA values (10,101,'Kandivali-West',0,TO_DATE('2024-01-18','YYYY-MM-DD'));

-- subquery
-- finding total sum of sale more than 20000 rs
SELECT * FROM SALES_DATA where CUSTOMER_ID in (SELECT CUSTOMER_ID from SALES_DATA GROUP by customer_ID having sum (SALE_AMOUNT)>20000);


