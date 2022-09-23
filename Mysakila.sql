use sakila;

show tables;
describe film;

#1	List all actors.
select first_name, last_name from actor;

#2	Find the surname of the actor with the forename 'John'
select last_name from actor where first_name="john"; 

#3	Find all actors with surname 'Neeson'
select first_name from actor where last_name="Neeson"; 

#4.	Find all actors with ID numbers divisible by 10
select first_name from actor where actor_id/10; 

#5	What is the description of the movie with an ID of 100?
select description from film where film_id="100"; 

#6.	Find every R-rated movie
select title from film where rating="R";



