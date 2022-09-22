use world;

show tables;
describe city;
describe country;
describe countrylanguage;
select * from country;
# 1 Using COUNT, get the number of cities in the USA.
select count(name) from city where CountryCode = "USA";

#2 Find out the population and life expectancy for people in Argentina.
select population,lifeExpectancy from country where name="argentina";

#3 Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
select lifeExpectancy,Name from country where lifeExpectancy is not null order by lifeExpectancy desc limit 1;

#4.	Using JOIN ... ON, find the capital city of Spain.
select city.name from country join city on country.capital=city.id where country.name="spain";

#5.	Using JOIN ... ON, list all the languages spoken in the Southeast Asia re
select distinct countrylanguage.Language from countrylanguage join country on countrylanguage.Countrycode=country.code where country.region="southeast Asia";

#6.	Using a single query, list 25 cities around the world that start with the letter F.
select * from city where name  like "f%" limit 25;

#7.	Using COUNT and JOIN ... ON, get the number of cities in China
select count(city.name)from city join country on city.countrycode=country.code where country.Name="china";

#8.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
select population,Name from country where Population is not null and population>0 order by Population asc limit 1;

#9.	Using aggregate functions, return the number of countries the database contains.
select count(name) from country;

#10.	What are the top ten largest countries by area?
select name,surfaceArea from country where surfaceArea is not null order by surfaceArea desc limit 10;

#11.	List the five largest cities by population in Japan.
select city.name, city.Population from city join country on city.countrycode=country.code where country.Name="japan";

#12.	List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!