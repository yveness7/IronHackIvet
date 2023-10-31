CREATE DATABASE car_lab_2;

use car_lab_2;

create table cars (
car_ID int unique not null auto_increment primary key,
VIN varchar(40),
manufacturer varchar(40),
model varchar(40),
year_ int, 
color varchar(40));


create table salesperson (
idsalesperson int not null unique,
staff_ID int not null unique auto_increment primary key,
name_ varchar(40),
store varchar(40));


create table customers (
id int not null unique, 
cust_id int unique auto_increment primary key, 
cust_name varchar(40),
cust_phone varchar(40),
cust_email varchar(40),
cust_address varchar(40),
cust_city varchar(40), 
cust_state varchar(40),
cust_country varchar(40),
cust_zipcode varchar(40));


create table invoices (
id int unique,
invoice_number int unique auto_increment primary key,
date_ varchar(40));    
         

INSERT INTO salesperson (idsalesperson, staff_ID, name_, store)
VALUES  (1, 00001,'Petey Cruiser', 'Madrid'),
		(2, 00002 ,'Anna Sthesia', 	'Barcelona'),
		(3, 00003,	'Paul Molive','Berlin'),
		(4, 00004,	'Gail Forcewind','Paris'),
		(5, 00005 ,	'Paige Turner','Mimia'),
		(6 ,00006 	,'Bob Frapples','Mexico City'),
		(7 ,00007 ,	'Walter Melon','Amsterdam'),
		(8, 00008 	,'Shonda Leer','São Paulo');
        
SELECT * FROM salesperson; 

INSERT INTO customers (id,cust_id,cust_name,cust_phone,cust_email,cust_address,cust_city,cust_state,cust_country,cust_zipcode)
VALUES 	(0,	10001 ,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045),
		(1, 20001, 'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States', 33130),
		(2, 30001, 'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);
        
        SELECT * FROM customers;

INSERT INTO invoices (id,invoice_number,date_)     				
VALUES 	(1, 852399038,22-08-2018),
		(2, 731166526,31-12-2018),
		(3, 271135104,22-01-2019);

		SELECT * FROM invoices;

INSERT INTO cars (car_ID, VIN, manufacturer, model, year_, color)
VALUES 	(1,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
		(2 ,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
		(3 ,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
		(4,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
		(5, 'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
		(6, 'DAM41UDN3CHU2WVF6','Volvo','V60', 'Cross Country',2019,'Gray');
       
       SELECT * FROM cars;

   


alter table invoces  
add column ______ int; 

insert into ______________ 
values 


select * from ____;

alter table
add foreign key (___)
references ____(_______)


