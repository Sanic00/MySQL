create database ig_clone;
use ig_clone;

create table users(
	id integer auto_increment primary key,
    username varchar(255) unique not null,
    created_at timestamp default now()
);

create table photos(
	id INTEGER auto_increment primary key,
    image_url varchar(255)not null,
    user_id integer not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id)
);

create table comments (
	id integer auto_increment primary key,
    comment_text varchar(255) not null,
    user_id integer not null,
    photo_id integer not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id)
);

create table likes (
	user_id integer not null,
    photo_id integer not null,
    created_at timestamp default now(),
    foreign key (user_id) references  users(id),
    foreign key (photo_id) references photos(id),
    primary key(user_id, photo_id)
);

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

insert into users (username) values
('BlueTheCat'),
('CharliBrown'),
('ColtSteele');

insert into photos (image_url, user_id) values
('/alskjd76', 1),
('/lkajsd98', 2),
('/90jddlkj', 2);

insert into comments(comment_text, user_id, photo_id) values
('Meow!', 1, 2),
('Amazing Shot!', 3, 2),
('hi <3 !', 2, 1);



describe users;