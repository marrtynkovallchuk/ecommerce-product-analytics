-- Revenue overview
-- Returns total revenue from purchase events

SELECT
    SUM(price) AS total_revenue
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase';
