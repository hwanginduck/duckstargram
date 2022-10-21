select * from tab;

create table duck_member(
						id varchar2(30),
						pw varchar2(30),
						name varchar2(20),
						email varchar2(50));

insert into duck_member values('admin', 'admin123','관리자', 'kaka7939@kakao.com');

drop table duck_member purge;

select * from duck_member;