-- Users & sessions overview
-- Returns total unique users and total unique sessions

SELECT
    COUNT(DISTINCT user_id) AS total_users,
    COUNT(DISTINCT user_session) AS total_sessions
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`;
