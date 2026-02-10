use notes;

create table if not exists posts (
    id int not null auto_increment primary key,
    title varchar(255) not null
);

insert into posts (title) values ("My First Blog Post");

insert into posts (title) values ("My Second Blog Post");

SELECT * from posts;

select * from posts where id = 1;

-- Notes
create table if not exists notes (
    id int auto_increment primary key,
    body text not null
);

create table if not exists users (
    id int auto_increment primary key,
    name varchar(255) not null,
    email varchar(255) not null
);

create unique index email_index on users (email);

show indexes from notes;