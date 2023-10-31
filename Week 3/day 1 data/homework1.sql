
#1show tables
use sakila; 
show tables;

#2Retrieve all the data from the tables actor, film and customer.
select *
from actor, film, customer; 

#3Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table

select title
from film;

#3.2 List of languages used in films, with the column aliased 

select name as language
from language;

#3.3 List of first names of all employees from the staff table

select first_name
from staff;

#4Retrieve unique release years.

select distinct release_year 
from film;

#5Counting records for database insights:
#5.1 Determine the number of stores that the company has.

select count(store_id)
from store;

#5.2 Determine the number of employees that the company has.

select count(staff_id)
from staff;

#5.3 Determine how many films are available for rent and how many have been rented.

select count(rental_id) as rented 
from rental ;

select count(film_id) as films 
from film;

#one lineeeerr
select	(select count(rental_id) from rental) as rented,
		(select count(film_id) from film) as films;


	
#5.4 Determine the number of distinct last names of the actors in the database.

select distinct count(last_name)
from actor; 


#6.Retrieve the 10 longest films.

select length
from film
limit 10;

#Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".

select *	
from actor
where first_name = 'SCARLETT'; 

#7.2 Retrieve all movies that have ARMAGEDDON in their title and 
#have a duration longer than 100 minutes.

select * 	
from film
where title like '%ARMAGEDDON%' 
	and length > 100;


#7.3 Determine the number of films that include Behind the Scenes content

select count(title)
from film 
where description like '%Behind the Scenes%'
	and special_features like '%Behind the Scenes%';






