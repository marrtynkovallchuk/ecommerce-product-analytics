-- Funnel stage users overview
-- Returns number of unique users per event_type

SELECT
    event_type,
    COUNT(DISTINCT user_id) AS unique_users
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
GROUP BY event_type
ORDER BY unique_users DESC;
