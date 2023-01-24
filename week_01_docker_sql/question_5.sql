-- In 2019-01-01 how many trips had 2 and 3 passengers?
SELECT
	passenger_count
	,COUNT(1)
FROM green_taxi_data
WHERE 
	lpep_pickup_datetime >= '20190101'
	AND lpep_pickup_datetime < '20190102'
	AND passenger_count IN (2, 3)
	GROUP BY 1
;