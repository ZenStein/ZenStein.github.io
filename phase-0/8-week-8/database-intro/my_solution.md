SELECT * FROM states;

SELECT * FROM regions;

SELECT state_name, population FROM states;

SELECT state_name, population FROM states ORDER BY population DESC;

SELECT state_name FROM states WHERE region_id = 7;

SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

SELECT state_name, region_id FROM states ORDER BY region_id ASC;

SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

SELECT regions.region_name, states.state_name FROM regions INNER JOIN states ON states.region_id = regions.id;

![Shema](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/8-week-8/database-intro/imgs/schema.png)