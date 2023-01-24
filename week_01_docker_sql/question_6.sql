-- For the passengers picked up in the Astoria Zone which was the drop off 
-- zone that had the largest tip? We want the name of the zone, not the id.
WITH new_table AS
(
	SELECT 
		"PULocationID"
		,l1."Zone" AS pu_zone
		,"DOLocationID"
		,l2."Zone" AS do_zone
		,tip_amount
	FROM green_taxi_data t
	JOIN taxi_zone_lookup l1
	ON t."PULocationID" = l1."LocationID"
	JOIN taxi_zone_lookup l2
	ON t."DOLocationID" = l2."LocationID"
)
SELECT 
	pu_zone
	,do_zone
	,tip_amount
FROM new_table
WHERE pu_zone = 'Astoria'
ORDER BY tip_amount DESC
LIMIT 1