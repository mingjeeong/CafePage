CREATE TABLE member(
	 num_id int not null primary key auto_increment,
	 id varchar(15) not null,
	 pass varchar(30) not null,
	 name varchar(14) not null,
	 email1 varchar(20) not null,
	 email2 varchar(20) not null,
	 sent varchar(5) not null,
	 ph1 int(6) not null,
	 ph2 int(6) not null,
	 ph3 int(6) not null,
	 gender varchar(15) not null,
	 birth1 int(6) not null,
	 birth2 int(6) not null,
	 birth3 int(6) not null,
	 address varchar(20) not null,
	 regdate datetime not null /*가입한 날짜*/
);

