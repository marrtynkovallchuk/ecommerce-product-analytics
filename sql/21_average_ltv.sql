-- Average LTV
-- Returns average revenue per user (average lifetime value)

SELECT
    AVG(user_revenue) AS avg_ltv
FROM (
    SELECT
        user_id,
        SUM(price) AS user_revenue
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'purchase'
    GROUP BY user_id
);
