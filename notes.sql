-- Active: 1770985756435@@127.0.0.1@3306@notes
create database if not exists notes;
use notes;

create table if not exists users (
    id int auto_increment primary key,
    name varchar(255) not null,
    email varchar(255) not null,
    unique (email)
);

create table if not exists notes (
    id int auto_increment primary key,
    body text not null,
    user_id int not null,
    foreign key (user_id) references users(id) on delete cascade
);

-- Seed data
insert into users (name, email) values
    ('John Doe', 'john@example.com'),
    ('Jane Smith', 'jane@example.com'),
    ('Bob Johnson', 'bob@example.com');

insert into notes (body, user_id) values
    ('Pick up groceries after work', 1),
    ('Review pull request #42', 1),
    ('Book dentist appointment for Friday', 2),
    ('Finish reading chapter 5', 2),
    ('Deploy v2.0 to production', 3);
