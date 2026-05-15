.headers on
.mode column

SELECT
    CASE
        WHEN performance_index BETWEEN 10 AND 40 THEN 'low'
        WHEN performance_index BETWEEN 41 AND 70 THEN 'mid'
        WHEN performance_index BETWEEN 71 AND 100 THEN 'high'
    END AS performance_category,
    COUNT(*) AS count,
    ROUND(AVG(performance_index), 2) AS avg_performance
FROM data_students
GROUP BY performance_category
ORDER BY avg_performance;