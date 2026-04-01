-- problem link : https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true

SELECT 
    ROUND(
        SQRT(
            POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
            POWER(MAX(LONG_W) - MIN(LONG_W), 2)
        ), 
    4) AS euclidean_distance
FROM STATION;