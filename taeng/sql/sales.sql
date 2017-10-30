
drop table sales constraint cascade;

create table sales(
	sales_date DATE,
	sales_pccost NUMBER(7),
	sales_itemprice NUMBER(5)
);

insert into SALES values(to_date('2017-09-05', 'yyyy-mm-dd'), 1000, 0);
insert into SALES values(to_date('2017-10-05', 'yyyy-mm-dd'),3000,2000);
INSERT INTO sales values(to_date('2017-10-28', 'yyyy-mm-dd'), 1000, 500);


select * from sales