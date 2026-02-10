use notes;

create table if not exists posts (
    id int not null auto_increment primary key,
    title varchar(255) not null
);

insert into posts(title)
values("My First Blog Post");

insert into posts(title)
values("My Second Blog Post");

SELECT * from posts;
select * from posts where id = 1;