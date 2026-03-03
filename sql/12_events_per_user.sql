-- Engagement metric: events per user
-- Returns average number of events per user

SELECT
    SAFE_DIVIDE(COUNT(*), COUNT(DISTINCT user_id)) AS events_per_user
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`;
