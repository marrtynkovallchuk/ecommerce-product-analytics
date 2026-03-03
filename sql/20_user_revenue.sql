-- User Revenue
-- Returns total revenue per user from purchase events

SELECT
    user_id,
    SUM(price) AS user_revenue
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
WHERE event_type = 'purchase'
GROUP BY user_id;
