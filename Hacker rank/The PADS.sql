/* problem link : https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true */

-- First result set: Names with occupation initial in parentheses, sorted alphabetically by Name
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name;

-- Second result set: Count of each occupation, sorted by count ascending, then by occupation name alphabetically
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*) ASC, Occupation ASC;