-- How many taxi trips were totally made on January 15?
SELECT
	COUNT(1)
FROM green_taxi_data
WHERE 
	lpep_pickup_datetime >= '20190115'
	AND lpep_pickup_datetime < '20190116'
;

