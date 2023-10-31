CREATE DATABASE library;

use library;

create table books (
ISBN int not null unique auto_increment primary key,
book_name varchar(40));

create table users (
user_id int not null unique auto_increment primary key,
first_name varchar(40),
last_name varchar(40));
 

