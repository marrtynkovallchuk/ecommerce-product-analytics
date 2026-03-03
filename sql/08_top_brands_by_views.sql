-- Top brands by views
-- Returns top 10 brands ranked by view events

SELECT
    brand,
    COUNT(*) AS views
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'view'
    AND brand IS NOT NULL
GROUP BY brand
ORDER BY views DESC
LIMIT 10;
