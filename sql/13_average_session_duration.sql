-- Average session duration
-- Returns average session duration in seconds

SELECT
    AVG(session_duration_sec) AS avg_session_duration_sec
FROM (
    SELECT
        user_session,
        TIMESTAMP_DIFF(MAX(event_time), MIN(event_time), SECOND) AS session_duration_sec
    FROM `ecommerce-project-488216.ecommerce_project.ecommerce_project`
    GROUP BY user_session
);
