-- write your queries here
SELECT * FROM owners o
  FULL OUTER JOIN vehicles v
    ON o.id=v.owner_id;


SELECT 
    o.first_name, 
    o.last_name, 
    COUNT(v.id) AS count
FROM 
    owners o
LEFT JOIN 
    vehicles v ON o.id = v.owner_id
GROUP BY 
    o.id, o.first_name, o.last_name
HAVING 
    COUNT(v.id) > 0
ORDER BY 
    o.first_name ASC;


SELECT
    o.first_name,
    o.last_name,
    COUNT(v.id) AS count,
    ROUND(AVG(v.price)) AS avg_price
FROM
    owners o
LEFT JOIN
    vehicles v ON o.id = v.owner_id
GROUP BY
    o.id, o.first_name, o.last_name
HAVING
    COUNT(v.id) > 1 AND AVG(v.price) > 10000
ORDER BY
    o.first_name DESC;