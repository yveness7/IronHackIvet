#CHALLENGE 1
#You need to use SQL built-in functions to gain 
#insights relating to the duration of movies:
#1.1 Determine the shortest and longest movie durations 
#and name the values as max_duration and min_duration.

select max(length) as 'shortest movie', min(length) as 'longest movie'
from film;

#1.2. Express the average movie duration in hours and minutes. Don't use decimals.
#Hint: Look for floor and round functions.


select floor(avg(length)/60) as 'hours', floor(avg(length) %60) as 'minutes'
from film;


#You need to gain insights related to rental dates:
#2.1 Calculate the number of days that the company has been operating.
#Hint: To do this, use the rental table, and the DATEDIFF() function 
#to subtract the earliest date in the rental_date column from the latest date.

select datediff(max(last_update),min(rental_date)) as operating_time
from rental;


#2.2 Retrieve rental information and add two additional columns to 
#show the month and weekday 
#of the rental. Return 20 rows of results.

TO FINISH!!!!!!!

#You need to ensure that customers can easily 
#access information about the movie collection. 
#To achieve this, retrieve the film titles and their 
#rental duration. If any rental duration value is NULL, 
#replace it with the string 'Not Available'. 
#Sort the results of the film title in ascending order.

#Please note that even if there are currently no null values
#in the rental duration column, 
#the query should still be written to handle such cases in the future.
#Hint: Look for the IFNULL() function.


select title, ifnull(rental_duration, 'Not Available') as 
from film
order by title asc; 


###################################
#CHALLENGE 2
#Next, you need to analyze the films in the collection to gain 
#some more insights. Using the film table, determine:
#1.1 The total number of films that have been released.

select count(title)
from film;

#1.2 The number of films for each rating.

select title
from film
group by rating;





