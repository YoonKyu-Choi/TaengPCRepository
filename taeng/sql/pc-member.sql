drop table member;
create table member (
	member_id varchar2(20) primary key, /* 아이디 */
	member_phonenum varchar2(15), /* 핸드폰 */
	member_personnum number(6) not null, /* 주민등록번호 */
	member_pw varchar2(20) not null, /* 비밀번호 */
	member_name varchar2(20) not null, /* 이름 */
	member_pctime number(5) /* 남은시간 */
);

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

insert into member values('admin','111-1111-11111',111111,'admin','이름55',0)

insert into pc values (pc_num_seq, NULL, 'NULL');
select * from pc;

insert into member values('id1','010-1111-1111',940627,'pw1','이름1',1);
insert into member values('id2','010-1111-1111',940627,'pw2','이름1',2);
insert into member values('id3','010-1111-1111',940627,'pw3','이름1',3);
insert into member values('id4','010-1111-1111',940627,'pw4','이름1',4);

<<<<<<< HEAD
insert into pc values (pc_num_seq.nextval, null, 'id1');

delete from pc where pc_num > 50;
=======
insert into pc values (pc_num_seq.nextval, null, null);
update pc p set p.pc_cost = 0, p.member_id = 'id1' where p.pc_num=2;
>>>>>>> branch 'master' of https://github.com/YoonKyu-Choi/TaengPcRepository.git
