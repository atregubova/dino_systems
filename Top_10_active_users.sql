USE test_db;

SELECT UID, sum(time_to_sec(Timestamp_end) - time_to_sec(Timestamp_start)) AS active_time
FROM call_logs
WHERE Call_dir='out' AND UID IN(
     SELECT UID 
       FROM numbers) 
GROUP BY  `UID`
ORDER BY sum(time_to_sec(Timestamp_end) - time_to_sec(Timestamp_start)) desc limit 0, 10;
