-- Top brands by revenue
-- Returns top 10 brands ranked by purchase revenue

SELECT
    brand,
    COUNT(*) AS purchases,
    SUM(price) AS revenue,
    AVG(price) AS avg_price
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase'
    AND brand IS NOT NULL
GROUP BY brand
ORDER BY revenue DESC
LIMIT 10;
