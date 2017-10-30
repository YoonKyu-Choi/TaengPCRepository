drop table member;
create table member (
	member_id varchar2(20) primary key, /* 아이디 */
	member_phonenum varchar2(15), /* 핸드폰 */
	member_personnum number(6) not null, /* 주민등록번호 */
	member_pw varchar2(20) not null, /* 비밀번호 */
	member_name varchar2(20) not null, /* 이름 */
	member_pctime number(5) /* 남은시간 */
);