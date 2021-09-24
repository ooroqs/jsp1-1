create table customer (
	idx int auto_increment primary key,
	name varchar(20) not null,
	password varchar(10) not null,
	email varchar(30) not null,
	addr varchar(30) ,
	gender varchar(10) not null,
	age tinyint ,
	hobby varchar(30)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- varchar의 크기는 문자수
insert into customer(name,password,email,gender,age)
values ('홍길동','11111111','hong@naver.com','female','12');

select * from customer c ;
insert into customer(name,password,email,addr,gender,age,hobby)
values ('홍길동','11111111','hong@naver.com','','female',0,'');

-- 문자수 체크 테스트용
insert into customer(name,password,email,gender)
values ('홍길동','11111111','hong@naver.com','female가나다라');

insert into customer(name,password,email,gender)
values ('홍길동','11111111','hong@naver.com','female가나다라f');

drop table customer ;


-- 고객정보 수정 요구사항 : email, addr을 변경할수 있다. 
--                    검색 조건은 pk 컬럼 idx로 합니다.
update customer set email='kil@naver.com',addr='울산'
where idx=1;

commit;

delete from customer where idx=9;
