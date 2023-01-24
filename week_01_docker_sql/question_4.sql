-- Which was the day with the largest trip distance? (use the pick up time for your calculations.)
SELECT
	lpep_pickup_datetime
	,trip_distance
FROM green_taxi_data
ORDER BY 2 DESC
LIMIT 1
;