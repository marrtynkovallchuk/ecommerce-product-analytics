-- ARPU (Average Revenue Per User)
-- Returns total revenue, number of users, and ARPU

SELECT
    SUM(price) AS total_revenue,
    COUNT(DISTINCT user_id) AS users,
    SAFE_DIVIDE(SUM(price), COUNT(DISTINCT user_id)) AS ARPU
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase';
