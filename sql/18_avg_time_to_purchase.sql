-- Average time to purchase
-- Returns average time (in seconds) between first view and first purchase per user

WITH user_events AS (
    SELECT
        user_id,
        MIN(IF(event_type = 'view', event_time, NULL)) AS first_view,
        MIN(IF(event_type = 'purchase', event_time, NULL)) AS first_purchase
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    GROUP BY user_id
)

SELECT
    AVG(TIMESTAMP_DIFF(first_purchase, first_view, SECOND)) AS avg_time_to_purchase_sec
FROM user_events
WHERE first_purchase IS NOT NULL;
