-- Average Order Value (AOV)
-- Returns average revenue per purchase event

SELECT
    SAFE_DIVIDE(SUM(price), COUNT(*)) AS avg_order_value
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase';
