drop table item;
create table item(
	item_name varchar2(20) primary key,
	item_price number(5) not null,
	item_stock number(3) not null,
	item_image varchar2(100)
);
select * from item;
delete from item;