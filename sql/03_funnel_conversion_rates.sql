-- Funnel conversion rates
-- Returns conversion between View → Cart → Purchase stages

WITH funnel AS (
    SELECT
        COUNT(DISTINCT IF(event_type = 'view', user_id, NULL)) AS view_users,
        COUNT(DISTINCT IF(event_type = 'cart', user_id, NULL)) AS cart_users,
        COUNT(DISTINCT IF(event_type = 'purchase', user_id, NULL)) AS purchase_users
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
)

SELECT
    view_users,
    cart_users,
    purchase_users,
    SAFE_DIVIDE(cart_users, view_users) AS view_to_cart_conversion,
    SAFE_DIVIDE(purchase_users, cart_users) AS cart_to_purchase_conversion,
    SAFE_DIVIDE(purchase_users, view_users) AS view_to_purchase_conversion
FROM funnel;
