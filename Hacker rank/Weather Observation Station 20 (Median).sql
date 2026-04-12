-- problem link : https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) t
WHERE rn = FLOOR((total_rows + 1) / 2);