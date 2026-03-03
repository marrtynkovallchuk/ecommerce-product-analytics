-- Purchases by weekday
-- Returns number of purchases and revenue per weekday

SELECT
    FORMAT_TIMESTAMP('%A', event_time) AS weekday,
    COUNT(*) AS purchases,
    SUM(price) AS revenue
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase'
GROUP BY weekday
ORDER BY purchases DESC;
