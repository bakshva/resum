.headers on
.mode column

SELECT
    CASE
        WHEN hours_study BETWEEN 1 AND 3 THEN '1-3'
        WHEN hours_study BETWEEN 4 AND 6 THEN '4-6'
        WHEN hours_study BETWEEN 7 AND 9 THEN '7-9'
    END AS hours_group,
    ROUND(AVG(performance_index), 2) AS avg_performance,
    COUNT(*) AS count
FROM data_students
GROUP BY hours_group
ORDER BY hours_group;