create database BooksDB;
use BooksDB;
create table Books(
 s_no int  primary key,
 Book_title varchar(50),
 Author_name varchar(50),
 genre varchar(50),
 publication_year int,
 price int);
 insert into  Books values(1,"Cindrella","Walter Disney","Cartoon",1997,5000);
 insert into  Books values(2,"Zombie","Hitler","Horror",1987,500);
 insert into  Books values(3,"Life of pie","Mary Comb","Life lesson",2007,2000);
 insert into  Books values(4,"Life of lord","Prince Jack","Fiction",1907,4000);
 insert into  Books values(5,"World tour","William","action",2002,5500);
 insert into  Books values(6,"Poppins","Wright Brothers","Cartoon",2010,3000);
 select * from Books;
SELECT * FROM Books
WHERE Book_title = 'Zombie'; 
UPDATE Books SET price = "1000" WHERE price=5500;

DELETE from Books
WHERE Book_title = "World tour ";

select * from Books;

select avg(price) from books;

create table authors(
  se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint fk_s_no foreign key(s_no) references Books(s_no));


insert into authors values(1,20,"Dubai","William",5);
insert into authors values(2,25,"Bombay","Zombie",2);
insert into authors values(3,30,"Sidney","Walter Elias Disney",4);
insert into authors values(4,40,"Darjiling","Wright Brothers",3);
 

SELECT * FROM authors INNER JOIN Books ON authors.se_no=Books.s_no ORDER BY author_age;
