-- Cart abandonment analysis
-- Returns number of cart users, purchase users and abandonment rate

WITH cart_users AS (
    SELECT DISTINCT user_id
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'cart'
),

purchase_users AS (
    SELECT DISTINCT user_id
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    WHERE event_type = 'purchase'
)

SELECT
    COUNT(DISTINCT c.user_id) AS cart_users,
    COUNT(DISTINCT p.user_id) AS purchase_users,
    COUNT(DISTINCT c.user_id) - COUNT(DISTINCT p.user_id) AS abandoned_users,
    SAFE_DIVIDE(
        COUNT(DISTINCT c.user_id) - COUNT(DISTINCT p.user_id),
        COUNT(DISTINCT c.user_id)
    ) AS cart_abandonment_rate
FROM cart_users c
LEFT JOIN purchase_users p
    ON c.user_id = p.user_id;
