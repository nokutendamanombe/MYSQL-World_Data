/* list all the languages spoken in the 'Southeast Asia' region ? */

SELECT 
    country.name, country.Region, countrylanguage.Language
FROM
    country
    join countrylanguage on country.Code = countrylanguage.CountryCode
WHERE
    country.Region LIKE '%Southeast Asia%'

 
/*Retrieve the names of all cities in the "city" table*/
select city.name From city 

/*Find the countries in the "country" table that have a population greater than 100 million.*/
select country.name from country 
where country.population > 100000000 

/*Get the official languages and their percentages for a specific country from the "countrylanguage" table.*/
select Language , IsOfficial, Percentage
 from countrylanguage
 where IsOfficial= True 
 
 /*Retrieve the name of each city along with its corresponding country name.*/
 select city.Name, country.Name
 from city 
 join country on city.countryCode = country.code 
 
 /*Find the countries in a specific continent from the "country" table and display the cities within those countries from the "city" table.*/
 select country.name , city.name from country 
 join city on country.Code = city.countrycode 
 where country.Continent like '%Africa%'
 
 /*Find the top 5 countries with the highest life expectancy from the "country" table.*/
 select country.LifeExpectancy from country 
 Order by LifeExpectancy desc 
 
 /*Calculate the total population for each continent from the "country" table.*/
SELECT Continent, SUM(Population) AS TotalPopulation
FROM country
Group BY Continent;

/*Find the average GNP (Gross National Product) for each region from the "country" table.*/
SELECT region, AVG(GNP) AS AvgGNP
FROM country
GROUP BY region


 /* Which is the most densely populated country in the world?*/

/*
  SELECT 
    country.name, country.population/country.surfaceArea as Populationdensity
FROM
    Country
ORDER BY Populationdensity desc

*/


/* What the population and average life expectancy for people in Argentina (ARG) ? */

/*
SELECT 
    country.name, avg(country.LifeExpectancy), country.Population
FROM
    Country
where country.Name like'%Argentina%'
*/


/* What country has the highest life expectancy? */ 

/*
Select country.name , country.lifeexpectancy 
From country
order by country.LifeExpectancy desc
*/



/* What is The number of cities in the USA ?*/

/*
Select count(*) from city
where city.CountryCode like '%USA%'
*/



/* What is the capital of Spain (ESP)*/

/*    
Select city.Name, country.name from city 
join country on city.ID = country.capital
where country.name like '%Spain%'
*/
    
    
 /*  Which country has the highest population?*/

 /*
  SELECT 
    country.name, country.population
FROM
    Country
ORDER BY country.Population DESC
*/


/*Which country has the least number of people?*/

/*
 SELECT 
    country.name, country.population
FROM
    Country
ORDER BY country.Population asc
*/



