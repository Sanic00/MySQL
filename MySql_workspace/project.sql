create database project;
use project;

create table userinfo (
	user_id varchar(50) primary key not null,
    user_password varchar(50) not null,
    user_nickname varchar(50) unique key not null,
    mail_address varchar(100) unique key not null,
    apply_date datetime,
    update_date timestamp default now()
);

create table grume_board (
	board_id int primary key auto_increment,
    board_title varchar(100) not null,
    user_id varchar(50) not null,
    board_date timestamp default now(),
    board_content varchar(2000) not null,
	foreign key(user_id) references userinfo(user_id)
);

create table comment1(
	comment_id integer primary key auto_increment,
    board_id int not null,
    user_id varchar(50) not null,
    comment_date timestamp default now(),
    comment_text varchar(255) not null,
    foreign key(user_id) references userinfo(user_id),
    foreign key(board_id) references grume_board(board_id)
);

describe comment1;
show databases;