-- Orders overview
-- Returns total number of purchase events (orders)

SELECT
    COUNT(*) AS total_orders
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase';
