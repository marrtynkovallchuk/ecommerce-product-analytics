-- Event distribution overview
-- Returns total number of events by event_type

SELECT
    event_type,
    COUNT(*) AS total_events
FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
GROUP BY event_type
ORDER BY total_events DESC;
