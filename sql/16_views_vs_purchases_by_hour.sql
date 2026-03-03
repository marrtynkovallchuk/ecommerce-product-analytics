-- Views vs Purchases by hour
-- Returns number of views and purchases per hour

SELECT
    EXTRACT(HOUR FROM event_time) AS hour,
    COUNTIF(event_type = 'view') AS views,
    COUNTIF(event_type = 'purchase') AS purchases
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
GROUP BY hour
ORDER BY hour;
