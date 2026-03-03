-- LTV Distribution
-- Buckets users by total revenue and counts number of users per bucket

SELECT
    CASE
        WHEN user_revenue < 5 THEN '0-5$'
        WHEN user_revenue < 20 THEN '5-20$'
        WHEN user_revenue < 50 THEN '20-50$'
        ELSE '50+$'
    END AS ltv_bucket,
    COUNT(*) AS users
FROM (
    SELECT
        user_id,
        SUM(price) AS user_revenue
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'purchase'
    GROUP BY user_id
)
GROUP BY ltv_bucket
ORDER BY users DESC;
