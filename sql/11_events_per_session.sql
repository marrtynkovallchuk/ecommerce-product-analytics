-- Engagement metric: events per session
-- Returns average number of events per user session

SELECT
    SAFE_DIVIDE(COUNT(*), COUNT(DISTINCT user_session)) AS events_per_session
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`;
