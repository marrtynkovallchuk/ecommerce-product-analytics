-- Purchases by hour
-- Returns number of purchases and revenue per hour of the day

SELECT
    EXTRACT(HOUR FROM event_time) AS hour,
    COUNT(*) AS purchases,
    SUM(price) AS revenue
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase'
GROUP BY hour
ORDER BY hour;
