
drop table sales

create table sales(
	sales_date VARCHAR2(20),
	sales_pccost NUMBER(7),
	sales_itemprice NUMBER(7)
);

insert into SALES values('2017-08-22 12-12-12', 1000, 0);
insert into SALES values('2015-04-22 12-12-12',3000,2000);
INSERT INTO sales values('2017-10-22 12-12-12', 1000, 500);


select * from sales;

SELECT * FROM sales ORDER BY sales_date DESC;