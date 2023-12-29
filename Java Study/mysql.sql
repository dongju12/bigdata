-- SQL(구조화 질의 언어)
-- MySQL DBMS(RDBMS : 관계형 데이터 베이스) -> TABLE(관리) 
create database bigdata;

create table student(
	num int not null primary key auto_increment,
	name varchar(50),
    tel varchar(50),
    age int,
    email varchar(50)
);
student-- CRUD
insert into student(name, tel, age, email) 
values('홍길동','010-1234-1234',20,'ㅁa@naver.com');
insert into student(name, tel, age, email) 
values('이동주','010-3515-6943',25,'asf@naver.com');
select * from student;

-- num가 2인 학생의 나이를 99로 수정하세요
update student set age=99 where num=2
update student 
set tel='010-5678-5678', email='1223@naver.com'
where num=2; 

-- 2번 학생을 삭제하시오
delete from student
where num=2;

-- 테이블 삭제(drop)
drop table student;

-- CRUD
-- 이름을 기준으로 오름차순 정렬(Sort)하여 출력
select * from student order by name asc;
select * from student order by name desc;

-- Q. 나이가 30세 이상인 학생을 출력하시오.
select * from student where age>=20;
select count(*) from student where age>=30;

