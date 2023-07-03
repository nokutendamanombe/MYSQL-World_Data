/*the number of cities in the USA ?

Select count(*) from city
where city.CountryCode like '%USA%'
*/

/* what the population and average life expectancy for people in Argentina (ARG) ?

SELECT 
    country.name, avg(country.LifeExpectancy), country.Population
FROM
    Country
where country.Name like'%Argentina%'*/


/* what country has the highest life expectancy?

Select country.name , country.lifeexpectancy 
From country
order by country.LifeExpectancy desc
*/



/* what is the capital of Spain (ESP)
Select city.Name, country.name from city 
join country on city.ID = country.capital
where country.name like '%Spain%'
*/


/* list all the languages spoken in the 'Southeast Asia' region

SELECT 
    country.name, country.Region, countrylanguage.Language
FROM
    country
    join countrylanguage on country.Code = countrylanguage.CountryCode
WHERE
    country.Region LIKE '%Southeast Asia%'
 */   
   
    
    
 /*   Which country has the highest population?
 
  SELECT 
    country.name, country.population
FROM
    Country
ORDER BY country.Population DESC
*/

/*Which country has the least number of people?

 SELECT 
    country.name, country.population
FROM
    Country
ORDER BY country.Population asc
*/


 /* Which is the most densely populated country in the world?


  SELECT 
    country.name, country.population/country.surfaceArea as Populationdensity
FROM
    Country
ORDER BY Populationdensity desc

*/
