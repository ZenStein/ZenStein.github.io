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


#Reflection

##What are databases for?##
    Databases are used to keep track of data, and are a way to store data, so you can pull from it as needed.
##What is a one-to-many relationship?##
    An example of this would be a product category table. One category has many items.
##What is a primary key? What is a foreign key? How can you determine which is which?##
    A primary key is a way of keeping all records unique, and in order. a foreign key
    is the primary key of another table.
##How can you select information out of a SQL database? What are some general guidelines for that?##
    Using the select statement, you can look above for examples.