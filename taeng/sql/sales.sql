
drop table sales constraint cascade;

create table sales(
	sales_date DATE,
	sales_pccost NUMBER(7),
	sales_itemprice NUMBER(5),
	item_name VARCHAR2(20) CONSTRAINT fk_item_name REFERENCES item 
);