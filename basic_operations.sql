Here’s a simpler version of queries to start the basic operations on a datasets :

```sql
-- View all records from Dataset1
SELECT * FROM project..data1;

-- View all records from Dataset2
SELECT * FROM project..data2;

-- Get total number of rows
SELECT COUNT(*) AS Total_Rows FROM project..data1;
SELECT COUNT(*) AS Total_Rows FROM project..data2;

-- View all data from Bihar and Jharkhand
SELECT * FROM project..data1 WHERE state IN ('Bihar', 'Jharkhand');

-- Total population in India
SELECT SUM(population) AS Total_Population FROM project..data2;

-- Average literacy by state
SELECT state, ROUND(AVG(literacy), 2) AS Avg_Literacy
FROM project..data1
GROUP BY state;

-- State names starting with 'A'
SELECT DISTINCT state FROM project..data1
WHERE LOWER(state) LIKE 'a%';

