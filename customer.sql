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


-- varchar�� ũ��� ���ڼ�
insert into customer(name,password,email,gender)
values ('ȫ�浿','11111111','hong@naver.com','female');

select * from customer c ;

-- ���ڼ� üũ �׽�Ʈ��
insert into customer(name,password,email,gender)
values ('ȫ�浿','11111111','hong@naver.com','female�����ٶ�');

insert into customer(name,password,email,gender)
values ('ȫ�浿','11111111','hong@naver.com','female�����ٶ�f');

drop table customer ;