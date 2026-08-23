
SELECT
    (SELECT COUNT(*) FROM analysts) AS total_analysts,
    (SELECT COUNT(*) FROM reports) AS total_reports,
    (SELECT COUNT(*) FROM report_requests) AS total_requests,
    (SELECT COUNT(*) FROM data_quality_issues) AS total_quality_issues;
    
    
SELECT status,
    COUNT(*) AS total_requests,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM report_requests),
        2
    ) AS percentage
FROM report_requests
GROUP BY status
ORDER BY total_requests DESC;    


SELECT
    ROUND(AVG(resolution_hours), 2) AS avg_resolution_hours,
    ROUND(MIN(resolution_hours), 2) AS min_resolution_hours,
    ROUND(MAX(resolution_hours), 2) AS max_resolution_hours
FROM report_requests
WHERE resolution_hours IS NOT NULL;

SELECT sla_status, COUNT(*) AS total_requests,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM report_requests WHERE sla_status IS NOT NULL),
        2
    ) AS percentage
FROM report_requests
WHERE sla_status IS NOT NULL
GROUP BY sla_status
ORDER BY total_requests DESC;


SELECT priority, COUNT(*) AS total_requests,
    SUM(CASE WHEN sla_status = 'Within SLA' THEN 1 ELSE 0 END) AS within_sla,
    SUM(CASE WHEN sla_status != 'Within SLA' THEN 1 ELSE 0 END) AS outside_sla,
    ROUND(
        SUM(CASE WHEN sla_status = 'Within SLA' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS sla_percentage
FROM report_requests
WHERE sla_status IS NOT NULL
GROUP BY priority
ORDER BY sla_percentage DESC;
SELECT a.analyst_id, a.analyst_name, a.department,COUNT(rr.request_id) AS total_requests,
    ROUND(AVG(rr.resolution_hours), 2) AS avg_resolution_hours,
    ROUND(
        SUM(CASE WHEN rr.sla_status = 'Within SLA' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(rr.request_id), 2
    ) AS sla_percentage
FROM analysts a
JOIN report_requests rr
    ON a.analyst_id = rr.analyst_id
GROUP BY
    a.analyst_id, a.analyst_name, a.department
ORDER BY sla_percentage DESC;

