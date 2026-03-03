-- Retention analysis
-- Returns number of returning users per day since first visit

WITH first_visit AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS first_day
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    GROUP BY user_id
),

user_activity AS (
    SELECT
        e.user_id,
        DATE(e.event_time) AS activity_day,
        f.first_day,
        DATE_DIFF(DATE(e.event_time), f.first_day, DAY) AS days_after_first
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project` e
    JOIN first_visit f
        ON e.user_id = f.user_id
)

SELECT
    days_after_first,
    COUNT(DISTINCT user_id) AS returning_users
FROM user_activity
GROUP BY days_after_first
ORDER BY days_after_first;
