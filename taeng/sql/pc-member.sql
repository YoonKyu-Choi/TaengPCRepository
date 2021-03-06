drop table member;
create table member (
	member_id varchar2(20) primary key, /* 아이디 */
	member_phonenum varchar2(15), /* 핸드폰 */
	member_personnum number(6) not null, /* 주민등록번호 */
	member_pw varchar2(20) not null, /* 비밀번호 */
	member_name varchar2(20) not null, /* 이름 */
	member_pctime number(5) /* 남은시간 */
)

select pc_num
from pc
where member_id is null;

select * from member;

drop sequence pc_num_seq;
create sequence pc_num_seq;

drop table pc;
create table pc (
	pc_num number primary key,
	pc_cost number(7),
	member_id varchar2(20),
	constraint fk_member_to_pc foreign key (member_id) references member (member_id)
);


select * from member;

drop sequence pc_num_seq;
create sequence pc_num_seq;

drop table pc;
insert into member values('admin','111-1111-11111',111111,'admin','이름55',0)

insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval , NULL, null);
insert into pc values (pc_num_seq.nextval, null, null);
select * from pc;
delete from pc where pc_num = 51;

update pc set pc_cost=0, member_id=null where pc_num = 1;
update pc set pc_cost=0, member_id=null where pc_num = 3;
delete from member;
insert into member values('id1','010-1111-1111',940627,'pw1','이름1',60);
insert into member values('id2','010-1111-1111',940627,'pw2','이름1',2);
insert into member values('id3','010-1111-1111',940627,'pw3','이름1',3);
insert into member values('id4','010-1111-1111',940627,'pw4','이름1',4);


		SELECT member_id
		FROM pc
		where pc_cost > 0 

