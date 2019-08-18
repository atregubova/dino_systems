USE test_db;
SELECT SUM((time_to_sec(Timestamp_end) - time_to_sec(Timestamp_start))*0.04) AS Total_expenses
FROM call_logs
WHERE Call_dir='out' AND `to` NOT IN(
     SELECT Phone_Number 
       FROM numbers);