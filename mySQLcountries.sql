SELECT countries.name AS name, languages.language, languages.percentage
FROM languages
JOIN countries ON languages.country_id = countries.id
WHERE language = 'Slovene'
ORDER BY percentage DESC;

SELECT countries.name, COUNT(cities.id) AS total
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY total DESC;

SELECT cities.name, cities.population
FROM cities
LEFT JOIN countries ON cities.country_code = countries.code
WHERE cities.population>500000 AND countries.name = 'Mexico' 
ORDER BY population DESC;

SELECT countries.name, languages.language, languages.percentage
FROM countries
LEFT JOIN languages ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY percentage DESC;

SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy
FROM countries
WHERE countries.government_form = 'Constitutional Monarchy' AND countries.capital > 200 AND countries.life_expectancy > 75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population > 500000;

SELECT countries.region, COUNT(countries.id) AS countries 
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;